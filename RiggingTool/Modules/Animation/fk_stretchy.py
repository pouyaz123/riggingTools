CLASS_NAME = 'FK_Stretchy'

TITLE = 'Stretchy Forward Kinematics'

DESCRIPTION = 'This module provies FK rotational controls for every joint in the blueprint it is installed on.along with the ability to stretch each of the joint segments'


import System.utils as utils
reload(utils)

import maya.cmds as cmds

import System.controlObject as controlObject
reload(controlObject)
import Animation.fk as fk

class FK_Stretchy(fk.FK):
	def __init__(self,moduleNamespace):
		fk.FK.__init__(self,moduleNamespace)
		
	def compatibleBlueprintModules(self):
		return('Finger','HingeJoint','LegFoot','SingleJointSegment','Spline','Thumb')
	
				
	def createFKControl(self,joint,parent,moduleContainer):
		fkControl = fk.FK.createFKControl(self,joint,parent,moduleContainer)
		
		children = cmds.listRelatives(joint, children=True, type='joint')
		childJoint = children[0]
		
		cmds.select(fkControl, replace=True)
		cmds.addAttr(at='float', defaultValue=1.0, minValue=0.001, softMaxValue=5.0, keyable=True, longName='stretch')
		cmds.addAttr(at='float', keyable=False, longName='originalLength')
		
		cmds.setAttr(fkControl+'.originalLength',cmds.getAttr(childJoint+'.translateX'))
		
		stretchFactorMultiply = cmds.shadingNode('multiplyDivide', asUtility=True, n=childJoint+'_stretchFactorMultiply')
		cmds.connectAttr(fkControl+'.stretch',stretchFactorMultiply+'.input1X',force=True)
		cmds.connectAttr(fkControl+'.originalLength',stretchFactorMultiply+'.input2X',force=True)
		cmds.connectAttr(stretchFactorMultiply+'.outputX',childJoint+'.translateX',force=True)
		
		utils.addNodeToContainer(moduleContainer,stretchFactorMultiply)
		
		attributeNiceName = utils.stripAllNamespaces(childJoint)[1]+'_stretch'
		self.publishNameToModuleContainer(fkControl+'.stretch', attributeNiceName,publishToOuterContainers=True)
		
	def UI(self,parentLayout):
		jointsGrp = self.blueprintNamespace + ':' + self.moduleNamespace + ':joints_grp'
		joints = utils.findJointChain(jointsGrp)
		joints.pop(0)
		joints.pop()
		
		for joint in joints:
			fkControl = joint + '_fkControl'
			controlObjectInstance = controlObject.ControlObject(fkControl)
			controlObjectInstance.UI(parentLayout)
			
			cmds.attrControlGrp(attribute=fkControl+'.stretch',label='Stretch')
			
	def match(self,*args):
		jointInfo = fk.FK.match(self,args)
		blueprintJoints = jointInfo[0]
		fkControls = jointInfo[1]
		
		index = 1
		for fkControl in fkControls:
			blueprintJointTranslation = cmds.getAttr(blueprintJoints[index]+'.translateX')
			stretchFactor = blueprintJointTranslation/cmds.getAttr(fkControl+'.originalLength')
			
			cmds.setAttr(fkControl+'.stretch', stretchFactor)
			
			index += 1
			

		