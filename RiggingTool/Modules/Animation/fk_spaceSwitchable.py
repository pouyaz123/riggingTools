CLASS_NAME = 'FK_SpaceSwitchable'

TITLE = 'Space-switchable Forward Kinematics'

DESCRIPTION = 'This module provies Space-Switchable FK rotational controls for every joint in the blueprint it is installed on.'


import System.utils as utils
reload(utils)

import maya.cmds as cmds

import System.controlObject as controlObject
reload(controlObject)
import Animation.fk as fk

class FK_SpaceSwitchable(fk.FK):
	def __init__(self,moduleNamespace):
		fk.FK.__init__(self,moduleNamespace)
				
	def createFKControl(self,joint,parent,moduleContainer):
		fkControlInfo = self.initFKControl(joint, spaceSwitchable=True)
		
		fkControl = fkControlInfo[0]
		rootControlParent = fkControlInfo[1]
		translationControl = fkControlInfo[2]
		
		
		cmds.parent(rootControlParent, parent, relative=True)
		
		pointConstraint = ''
		if translationControl:
			cmds.xform(fkControl, worldSpace=True, absolute=True, translation=cmds.xform(joint, q=True, worldSpace=True, translation=True))
			pointConstraint = cmds.pointConstraint(fkControl, joint, maintainOffset=True, n=joint+'_pointConstraint')[0]
		else:
			pointConstraint = cmds.pointConstraint(joint, rootControlParent, maintainOffset=False, n=rootControlParent+'_pointConstraint')[0]
			
		jointOrientation = cmds.xform(joint,q=True, worldSpace=True, rotation=True)
		cmds.xform(fkControl, worldSpace=True, absolute=True, rotation=jointOrientation)
		
		children = cmds.listRelatives(joint, children=True, type='joint')
		
		childJoint = None
		
		if children == None:
			childJoint = cmds.duplicate(joint,n=joint+'_child')[0]
			utils.addNodeToContainer(moduleContainer,childJoint)
			
			cmds.parent(childJoint,joint,absolute=True)
			cmds.setAttr(childJoint+'.translateX',1.0)
			
		else:
			childJoint = children[0]
			
		ikNodes = cmds.ikHandle(sj=joint, ee=childJoint, n=joint+'_ikHandle',sol='ikRPsolver')
		ikNodes[1] = cmds.rename(ikNodes[1], joint+'_effector')
		ikHandle = ikNodes[0]
		
		cmds.parent(ikHandle,fkControl,absolute=True)
		
		poleVectorLocator = cmds.spaceLocator(n=joint+'_poleVectorLoc')[0]
		
		cmds.parent(poleVectorLocator, joint,relative=True)
		cmds.setAttr(poleVectorLocator+'.translateY',3)
		cmds.parent(poleVectorLocator, fkControl, absolute=True)
		
		for node in [poleVectorLocator, ikHandle]:
			cmds.setAttr(node+'.visibility',0)
			
		jointName = utils.stripAllNamespaces(joint)[1]
		creationPoseJoint = self.blueprintNamespace + ':creationPose_'+ jointName
		utils.matchTwistAngle(ikHandle+'.twist',[joint,],[creationPoseJoint,])
		
		containedNodes = list(ikNodes)
		containedNodes.append(pointConstraint)
		containedNodes.append(poleVectorLocator)
		utils.addNodeToContainer(moduleContainer,containedNodes)
		
		
		
		
		
		