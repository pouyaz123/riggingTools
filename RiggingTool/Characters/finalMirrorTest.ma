//Maya ASCII 2012 scene
//Name: finalMirrorTest.ma
//Last modified: Tue, Jun 12, 2012 01:31:58 AM
//Codeset: 1252
requires maya "2012";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2012";
fileInfo "version" "2012 x64";
fileInfo "cutIdentifier" "201109261234-811691";
fileInfo "osv" "Microsoft Windows Vista Home Premium Edition, 64-bit Service Pack 2 (Build 6002)\n";
createNode transform -n "character_grp";
	addAttr -ci true -sn "moduleMaintenanceVisibility" -ln "moduleMaintenanceVisibility" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "animationControlVisibility" -ln "animationControlVisibility" 
		-dv 1 -min 0 -max 1 -at "bool";
	setAttr ".moduleMaintenanceVisibility";
	setAttr -k on ".animationControlVisibility";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1:module_grp" -p "character_grp";
	addAttr -ci true -sn "hierarchicalScale" -ln "hierarchicalScale" -at "float";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1:HOOK_IN" -p "HingeJoint__instance_1:module_grp";
	setAttr ".s";
	setAttr ".sy";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1:blueprint_joints_grp" -p "HingeJoint__instance_1:HOOK_IN";
	addAttr -ci true -sn "controlModulesInstalled" -ln "controlModulesInstalled" -min 
		0 -max 1 -at "bool";
	setAttr ".ove" yes;
lockNode -l 1 -lu 1;
createNode joint -n "HingeJoint__instance_1:blueprint_root_joint" -p "HingeJoint__instance_1:blueprint_joints_grp";
	setAttr ".t" -type "double3" 5.5744900142920173 0 0 ;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.9999998004611 14.036423091218701 0 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 -50 0 ;
lockNode -l 1 -lu 1;
createNode joint -n "HingeJoint__instance_1:blueprint_hinge_joint" -p "HingeJoint__instance_1:blueprint_root_joint";
	setAttr ".t" -type "double3" 4.123105525970459 7.4446255129772491e-024 -4.4408920985006262e-016 ;
	setAttr ".t";
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 28.072846182437406 0 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 50 0 ;
lockNode -l 1 -lu 1;
createNode joint -n "HingeJoint__instance_1:blueprint_end_joint" -p "HingeJoint__instance_1:blueprint_hinge_joint";
	setAttr ".t" -type "double3" 4.123105525970459 0 1.3322676295501878e-015 ;
	setAttr ".t";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1:creationPose_joints_grp" -p "HingeJoint__instance_1:HOOK_IN";
lockNode -l 1 -lu 1;
createNode joint -n "HingeJoint__instance_1:creationPose_root_joint" -p "HingeJoint__instance_1:creationPose_joints_grp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.5744900142920173 0 0 ;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.9999998004611 14.036423091218705 -3.0532882497109343e-024 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 -50 0 ;
lockNode -l 1 -lu 1;
createNode joint -n "HingeJoint__instance_1:creationPose_hinge_joint" -p "HingeJoint__instance_1:creationPose_root_joint";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.1231055259704599 7.4446255129772491e-024 -4.4408920985006262e-016 ;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 28.072846182437402 0 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 50 0 ;
lockNode -l 1 -lu 1;
createNode joint -n "HingeJoint__instance_1:creationPose_end_joint" -p "HingeJoint__instance_1:creationPose_hinge_joint";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.123105525970459 0 1.3322676295501878e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1:SETTINGS" -p "HingeJoint__instance_1:module_grp";
	addAttr -ci true -sn "activeModule" -ln "activeModule" -min 0 -max 0 -en "None" 
		-at "enum";
	addAttr -ci true -sn "creationPoseWeight" -ln "creationPoseWeight" -dv 1 -at "float";
	setAttr ".v" no;
lockNode -l 1 -lu 1;
createNode locator -n "HingeJoint__instance_1:SETTINGSShape" -p "HingeJoint__instance_1:SETTINGS";
	setAttr -k off ".v";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1_mirror:module_grp" -p "character_grp";
	addAttr -ci true -sn "mirrorInfo" -ln "mirrorInfo" -min 0 -max 3 -en "node:x:y:z" 
		-at "enum";
	addAttr -ci true -sn "hierarchicalScale" -ln "hierarchicalScale" -at "float";
	setAttr ".mirrorInfo" 1;
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1_mirror:HOOK_IN" -p "HingeJoint__instance_1_mirror:module_grp";
	setAttr ".s";
	setAttr ".sy";
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1_mirror:blueprint_joints_grp" -p "HingeJoint__instance_1_mirror:HOOK_IN";
	addAttr -ci true -sn "controlModulesInstalled" -ln "controlModulesInstalled" -min 
		0 -max 1 -at "bool";
	setAttr ".ove" yes;
lockNode -l 1 -lu 1;
createNode joint -n "HingeJoint__instance_1_mirror:blueprint_root_joint" -p "HingeJoint__instance_1_mirror:blueprint_joints_grp";
	setAttr ".t" -type "double3" -5.5744900142920173 0 0 ;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -14.036467921283899 0 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 -50 0 ;
lockNode -l 1 -lu 1;
createNode joint -n "HingeJoint__instance_1_mirror:blueprint_hinge_joint" -p "HingeJoint__instance_1_mirror:blueprint_root_joint";
	setAttr ".t" -type "double3" -4.123105525970459 -2.2460004232528716e-014 3.2245923866636161e-006 ;
	setAttr ".t";
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 28.07290213874882 0 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 50 0 ;
lockNode -l 1 -lu 1;
createNode joint -n "HingeJoint__instance_1_mirror:blueprint_end_joint" -p "HingeJoint__instance_1_mirror:blueprint_hinge_joint";
	setAttr ".t" -type "double3" -4.123105525970459 -6.757331704816693e-009 -7.9920572204628115e-007 ;
	setAttr ".t";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1_mirror:creationPose_joints_grp" 
		-p "HingeJoint__instance_1_mirror:HOOK_IN";
lockNode -l 1 -lu 1;
createNode joint -n "HingeJoint__instance_1_mirror:creationPose_root_joint" -p "HingeJoint__instance_1_mirror:creationPose_joints_grp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.5744900142920173 0 0 ;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -14.036467921283899 0 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 -50 0 ;
lockNode -l 1 -lu 1;
createNode joint -n "HingeJoint__instance_1_mirror:creationPose_hinge_joint" -p "HingeJoint__instance_1_mirror:creationPose_root_joint";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -4.1231055259704634 -2.2460004232528716e-014 3.2245923866636161e-006 ;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 28.072902138748823 0 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 50 0 ;
lockNode -l 1 -lu 1;
createNode joint -n "HingeJoint__instance_1_mirror:creationPose_end_joint" -p "HingeJoint__instance_1_mirror:creationPose_hinge_joint";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -4.123105525970459 -6.757331704816693e-009 -7.9920572204628115e-007 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode transform -n "HingeJoint__instance_1_mirror:SETTINGS" -p "HingeJoint__instance_1_mirror:module_grp";
	addAttr -ci true -sn "activeModule" -ln "activeModule" -min 0 -max 0 -en "None" 
		-at "enum";
	addAttr -ci true -sn "creationPoseWeight" -ln "creationPoseWeight" -dv 1 -at "float";
	setAttr ".v" no;
lockNode -l 1 -lu 1;
createNode locator -n "HingeJoint__instance_1_mirror:SETTINGSShape" -p "HingeJoint__instance_1_mirror:SETTINGS";
	setAttr -k off ".v";
lockNode -l 1 -lu 1;
createNode container -n "character_container";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr -s 5 ".boc";
	setAttr -s 4 ".ish[1:4]" yes yes yes yes;
	setAttr ".ctor" -type "string" "cat";
	setAttr ".cdat" -type "string" "2012/06/12 01:31:58";
	setAttr ".aal" -type "attributeAlias" {"animControlVis","borderConnections[0]","instance_1_activeModule"
		,"borderConnections[1]","instance_1_creationPoseWeight","borderConnections[2]","instance_1_mirror_activeModule"
		,"borderConnections[3]","instance_1_mirror_creationPoseWeight","borderConnections[4]"
		} ;
lockNode -l 1 -lu 1;
createNode container -n "HingeJoint__instance_1:module_container";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr -s 2 ".boc";
	setAttr ".ctor" -type "string" "cat";
	setAttr ".cdat" -type "string" "2012/06/12 01:31:48";
	setAttr ".aal" -type "attributeAlias" {"activeModule","borderConnections[0]","creationPoseWeight"
		,"borderConnections[1]"} ;
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "moduleVisibilityMultiply";
	setAttr ".i1";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode container -n "HingeJoint__instance_1_mirror:module_container";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr -s 2 ".boc";
	setAttr ".ctor" -type "string" "cat";
	setAttr ".cdat" -type "string" "2012/06/12 01:31:48";
	setAttr ".aal" -type "attributeAlias" {"activeModule","borderConnections[0]","creationPoseWeight"
		,"borderConnections[1]"} ;
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout9";
	setAttr ".ihi" 0;
	setAttr -s 5 ".hyp";
createNode reverse -n "reverse_moduleMaintenanceVisibility";
	setAttr ".i";
lockNode -l 1 -lu 1;
createNode container -n "HingeJoint__instance_1:blueprint_container";
	setAttr ".isc" yes;
	setAttr ".ctor" -type "string" "cat";
	setAttr ".cdat" -type "string" "2012/06/12 01:31:48";
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout6";
	setAttr ".ihi" 0;
	setAttr -s 5 ".hyp";
createNode unitConversion -n "unitConversion2";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
createNode unitConversion -n "unitConversion1";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "HingeJoint__instance_1:blueprint_end_joint_addTx";
	setAttr ".i1";
	setAttr ".i1";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "HingeJoint__instance_1:blueprint_hinge_joint_original_Tx";
	setAttr ".i1" -type "float3" 4.1231055 0 0 ;
	setAttr ".i1";
	setAttr -l on ".i1x";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "HingeJoint__instance_1:blueprint_hinge_joint_addTx";
	setAttr ".i1";
	setAttr ".i1";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "HingeJoint__instance_1:blueprint_root_joint_addRotations";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "HingeJoint__instance_1:blueprint_root_joint_dummyRotationsMultiply";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "HingeJoint__instance_1:blueprint_hinge_joint_dummyRotationsMultiply";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "HingeJoint__instance_1:blueprint_hinge_joint_addRotations";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "HingeJoint__instance_1:blueprint_end_joint_original_Tx";
	setAttr ".i1" -type "float3" 4.1231055 0 0 ;
	setAttr ".i1";
	setAttr -l on ".i1x";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout5";
	setAttr ".ihi" 0;
	setAttr -s 18 ".hyp";
createNode container -n "HingeJoint__instance_1_mirror:blueprint_container";
	setAttr ".isc" yes;
	setAttr ".ctor" -type "string" "cat";
	setAttr ".cdat" -type "string" "2012/06/12 01:31:48";
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout8";
	setAttr ".ihi" 0;
	setAttr -s 5 ".hyp";
createNode multiplyDivide -n "HingeJoint__instance_1_mirror:blueprint_end_joint_original_Tx";
	setAttr ".i1" -type "float3" -4.1231055 0 0 ;
	setAttr ".i1";
	setAttr -l on ".i1x";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "HingeJoint__instance_1_mirror:blueprint_end_joint_addTx";
	setAttr ".i1";
	setAttr ".i1";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "HingeJoint__instance_1_mirror:blueprint_hinge_joint_original_Tx";
	setAttr ".i1" -type "float3" -4.1231055 0 0 ;
	setAttr ".i1";
	setAttr -l on ".i1x";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "HingeJoint__instance_1_mirror:blueprint_hinge_joint_addTx";
	setAttr ".i1";
	setAttr ".i1";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "HingeJoint__instance_1_mirror:blueprint_hinge_joint_dummyRotationsMultiply";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "HingeJoint__instance_1_mirror:blueprint_hinge_joint_addRotations";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "HingeJoint__instance_1_mirror:blueprint_root_joint_dummyRotationsMultiply";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "HingeJoint__instance_1_mirror:blueprint_root_joint_addRotations";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode unitConversion -n "unitConversion4";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
createNode unitConversion -n "unitConversion3";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout7";
	setAttr ".ihi" 0;
	setAttr -s 18 ".hyp";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 18 ".u";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "HingeJoint__instance_1:HOOK_IN.sy" "HingeJoint__instance_1:module_grp.hierarchicalScale"
		 -l on;
connectAttr "character_grp.moduleMaintenanceVisibility" "HingeJoint__instance_1:blueprint_joints_grp.v"
		 -l on;
connectAttr "unitConversion1.o" "HingeJoint__instance_1:blueprint_root_joint.r" 
		-l on;
connectAttr "HingeJoint__instance_1:blueprint_root_joint.s" "HingeJoint__instance_1:blueprint_hinge_joint.is"
		 -l on;
connectAttr "unitConversion2.o" "HingeJoint__instance_1:blueprint_hinge_joint.r"
		 -l on;
connectAttr "HingeJoint__instance_1:blueprint_hinge_joint_addTx.o1" "HingeJoint__instance_1:blueprint_hinge_joint.tx"
		 -l on;
connectAttr "HingeJoint__instance_1:blueprint_hinge_joint.s" "HingeJoint__instance_1:blueprint_end_joint.is"
		 -l on;
connectAttr "HingeJoint__instance_1:blueprint_end_joint_addTx.o1" "HingeJoint__instance_1:blueprint_end_joint.tx"
		 -l on;
connectAttr "HingeJoint__instance_1:creationPose_root_joint.s" "HingeJoint__instance_1:creationPose_hinge_joint.is"
		 -l on;
connectAttr "HingeJoint__instance_1:creationPose_hinge_joint.s" "HingeJoint__instance_1:creationPose_end_joint.is"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:HOOK_IN.sy" "HingeJoint__instance_1_mirror:module_grp.hierarchicalScale"
		 -l on;
connectAttr "character_grp.moduleMaintenanceVisibility" "HingeJoint__instance_1_mirror:blueprint_joints_grp.v"
		 -l on;
connectAttr "unitConversion3.o" "HingeJoint__instance_1_mirror:blueprint_root_joint.r"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:blueprint_root_joint.s" "HingeJoint__instance_1_mirror:blueprint_hinge_joint.is"
		 -l on;
connectAttr "unitConversion4.o" "HingeJoint__instance_1_mirror:blueprint_hinge_joint.r"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:blueprint_hinge_joint_addTx.o1" "HingeJoint__instance_1_mirror:blueprint_hinge_joint.tx"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:blueprint_hinge_joint.s" "HingeJoint__instance_1_mirror:blueprint_end_joint.is"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:blueprint_end_joint_addTx.o1" "HingeJoint__instance_1_mirror:blueprint_end_joint.tx"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:creationPose_root_joint.s" "HingeJoint__instance_1_mirror:creationPose_hinge_joint.is"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:creationPose_hinge_joint.s" "HingeJoint__instance_1_mirror:creationPose_end_joint.is"
		 -l on;
connectAttr "character_grp.animationControlVisibility" "character_container.boc[0]"
		 -l on;
connectAttr "HingeJoint__instance_1:module_container.boc[0]" "character_container.boc[1]"
		 -l on;
connectAttr "HingeJoint__instance_1:module_container.boc[1]" "character_container.boc[2]"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:module_container.boc[0]" "character_container.boc[3]"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:module_container.boc[1]" "character_container.boc[4]"
		 -l on;
connectAttr "hyperLayout9.msg" "character_container.hl" -l on;
connectAttr "HingeJoint__instance_1:SETTINGS.activeModule" "HingeJoint__instance_1:module_container.boc[0]"
		;
connectAttr "HingeJoint__instance_1:SETTINGS.creationPoseWeight" "HingeJoint__instance_1:module_container.boc[1]"
		;
connectAttr "hyperLayout6.msg" "HingeJoint__instance_1:module_container.hl" -l on
		;
connectAttr "reverse_moduleMaintenanceVisibility.ox" "moduleVisibilityMultiply.i1x"
		 -l on;
connectAttr "character_grp.animationControlVisibility" "moduleVisibilityMultiply.i2x"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:SETTINGS.activeModule" "HingeJoint__instance_1_mirror:module_container.boc[0]"
		;
connectAttr "HingeJoint__instance_1_mirror:SETTINGS.creationPoseWeight" "HingeJoint__instance_1_mirror:module_container.boc[1]"
		;
connectAttr "hyperLayout8.msg" "HingeJoint__instance_1_mirror:module_container.hl"
		 -l on;
connectAttr "HingeJoint__instance_1:module_container.msg" "hyperLayout9.hyp[0].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:module_container.msg" "hyperLayout9.hyp[1].dn"
		;
connectAttr "character_grp.msg" "hyperLayout9.hyp[2].dn";
connectAttr "reverse_moduleMaintenanceVisibility.msg" "hyperLayout9.hyp[3].dn";
connectAttr "moduleVisibilityMultiply.msg" "hyperLayout9.hyp[4].dn";
connectAttr "character_grp.moduleMaintenanceVisibility" "reverse_moduleMaintenanceVisibility.ix"
		 -l on;
connectAttr "hyperLayout5.msg" "HingeJoint__instance_1:blueprint_container.hl" -l
		 on;
connectAttr "HingeJoint__instance_1:module_grp.msg" "hyperLayout6.hyp[0].dn";
connectAttr "HingeJoint__instance_1:HOOK_IN.msg" "hyperLayout6.hyp[1].dn";
connectAttr "HingeJoint__instance_1:SETTINGS.msg" "hyperLayout6.hyp[2].dn";
connectAttr "HingeJoint__instance_1:blueprint_container.msg" "hyperLayout6.hyp[3].dn"
		;
connectAttr "HingeJoint__instance_1:SETTINGSShape.msg" "hyperLayout6.hyp[4].dn";
connectAttr "HingeJoint__instance_1:blueprint_hinge_joint_addRotations.o3" "unitConversion2.i"
		 -l on;
connectAttr "HingeJoint__instance_1:blueprint_root_joint_addRotations.o3" "unitConversion1.i"
		 -l on;
connectAttr "HingeJoint__instance_1:blueprint_end_joint_original_Tx.ox" "HingeJoint__instance_1:blueprint_end_joint_addTx.i1[0]"
		 -l on;
connectAttr "HingeJoint__instance_1:SETTINGS.creationPoseWeight" "HingeJoint__instance_1:blueprint_hinge_joint_original_Tx.i2x"
		 -l on;
connectAttr "HingeJoint__instance_1:blueprint_hinge_joint_original_Tx.ox" "HingeJoint__instance_1:blueprint_hinge_joint_addTx.i1[0]"
		 -l on;
connectAttr "HingeJoint__instance_1:blueprint_root_joint_dummyRotationsMultiply.o" "HingeJoint__instance_1:blueprint_root_joint_addRotations.i3[0]"
		 -l on;
connectAttr "HingeJoint__instance_1:blueprint_hinge_joint_dummyRotationsMultiply.o" "HingeJoint__instance_1:blueprint_hinge_joint_addRotations.i3[0]"
		 -l on;
connectAttr "HingeJoint__instance_1:SETTINGS.creationPoseWeight" "HingeJoint__instance_1:blueprint_end_joint_original_Tx.i2x"
		 -l on;
connectAttr "HingeJoint__instance_1:blueprint_root_joint_addRotations.msg" "hyperLayout5.hyp[0].dn"
		;
connectAttr "HingeJoint__instance_1:blueprint_root_joint_dummyRotationsMultiply.msg" "hyperLayout5.hyp[1].dn"
		;
connectAttr "HingeJoint__instance_1:blueprint_hinge_joint_addRotations.msg" "hyperLayout5.hyp[2].dn"
		;
connectAttr "HingeJoint__instance_1:blueprint_hinge_joint_dummyRotationsMultiply.msg" "hyperLayout5.hyp[3].dn"
		;
connectAttr "HingeJoint__instance_1:blueprint_hinge_joint_addTx.msg" "hyperLayout5.hyp[4].dn"
		;
connectAttr "HingeJoint__instance_1:blueprint_hinge_joint_original_Tx.msg" "hyperLayout5.hyp[5].dn"
		;
connectAttr "HingeJoint__instance_1:blueprint_end_joint_addTx.msg" "hyperLayout5.hyp[6].dn"
		;
connectAttr "HingeJoint__instance_1:blueprint_end_joint_original_Tx.msg" "hyperLayout5.hyp[7].dn"
		;
connectAttr "HingeJoint__instance_1:blueprint_joints_grp.msg" "hyperLayout5.hyp[8].dn"
		;
connectAttr "HingeJoint__instance_1:creationPose_joints_grp.msg" "hyperLayout5.hyp[9].dn"
		;
connectAttr "unitConversion1.msg" "hyperLayout5.hyp[10].dn";
connectAttr "unitConversion2.msg" "hyperLayout5.hyp[11].dn";
connectAttr "HingeJoint__instance_1:blueprint_root_joint.msg" "hyperLayout5.hyp[12].dn"
		;
connectAttr "HingeJoint__instance_1:blueprint_hinge_joint.msg" "hyperLayout5.hyp[13].dn"
		;
connectAttr "HingeJoint__instance_1:blueprint_end_joint.msg" "hyperLayout5.hyp[14].dn"
		;
connectAttr "HingeJoint__instance_1:creationPose_root_joint.msg" "hyperLayout5.hyp[15].dn"
		;
connectAttr "HingeJoint__instance_1:creationPose_hinge_joint.msg" "hyperLayout5.hyp[16].dn"
		;
connectAttr "HingeJoint__instance_1:creationPose_end_joint.msg" "hyperLayout5.hyp[17].dn"
		;
connectAttr "hyperLayout7.msg" "HingeJoint__instance_1_mirror:blueprint_container.hl"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:module_grp.msg" "hyperLayout8.hyp[0].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:HOOK_IN.msg" "hyperLayout8.hyp[1].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:SETTINGS.msg" "hyperLayout8.hyp[2].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:blueprint_container.msg" "hyperLayout8.hyp[3].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:SETTINGSShape.msg" "hyperLayout8.hyp[4].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:SETTINGS.creationPoseWeight" "HingeJoint__instance_1_mirror:blueprint_end_joint_original_Tx.i2x"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:blueprint_end_joint_original_Tx.ox" "HingeJoint__instance_1_mirror:blueprint_end_joint_addTx.i1[0]"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:SETTINGS.creationPoseWeight" "HingeJoint__instance_1_mirror:blueprint_hinge_joint_original_Tx.i2x"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:blueprint_hinge_joint_original_Tx.ox" "HingeJoint__instance_1_mirror:blueprint_hinge_joint_addTx.i1[0]"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:blueprint_hinge_joint_dummyRotationsMultiply.o" "HingeJoint__instance_1_mirror:blueprint_hinge_joint_addRotations.i3[0]"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:blueprint_root_joint_dummyRotationsMultiply.o" "HingeJoint__instance_1_mirror:blueprint_root_joint_addRotations.i3[0]"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:blueprint_hinge_joint_addRotations.o3" "unitConversion4.i"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:blueprint_root_joint_addRotations.o3" "unitConversion3.i"
		 -l on;
connectAttr "HingeJoint__instance_1_mirror:blueprint_root_joint_addRotations.msg" "hyperLayout7.hyp[0].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:blueprint_root_joint_dummyRotationsMultiply.msg" "hyperLayout7.hyp[1].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:blueprint_hinge_joint_addRotations.msg" "hyperLayout7.hyp[2].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:blueprint_hinge_joint_dummyRotationsMultiply.msg" "hyperLayout7.hyp[3].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:blueprint_hinge_joint_addTx.msg" "hyperLayout7.hyp[4].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:blueprint_hinge_joint_original_Tx.msg" "hyperLayout7.hyp[5].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:blueprint_end_joint_addTx.msg" "hyperLayout7.hyp[6].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:blueprint_end_joint_original_Tx.msg" "hyperLayout7.hyp[7].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:blueprint_joints_grp.msg" "hyperLayout7.hyp[8].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:creationPose_joints_grp.msg" "hyperLayout7.hyp[9].dn"
		;
connectAttr "unitConversion3.msg" "hyperLayout7.hyp[10].dn";
connectAttr "unitConversion4.msg" "hyperLayout7.hyp[11].dn";
connectAttr "HingeJoint__instance_1_mirror:blueprint_root_joint.msg" "hyperLayout7.hyp[12].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:blueprint_hinge_joint.msg" "hyperLayout7.hyp[13].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:blueprint_end_joint.msg" "hyperLayout7.hyp[14].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:creationPose_root_joint.msg" "hyperLayout7.hyp[15].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:creationPose_hinge_joint.msg" "hyperLayout7.hyp[16].dn"
		;
connectAttr "HingeJoint__instance_1_mirror:creationPose_end_joint.msg" "hyperLayout7.hyp[17].dn"
		;
connectAttr "HingeJoint__instance_1:blueprint_root_joint_addRotations.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1:blueprint_root_joint_dummyRotationsMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1:blueprint_hinge_joint_addRotations.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1:blueprint_hinge_joint_dummyRotationsMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1:blueprint_hinge_joint_addTx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1:blueprint_hinge_joint_original_Tx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1:blueprint_end_joint_addTx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1:blueprint_end_joint_original_Tx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1_mirror:blueprint_root_joint_addRotations.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1_mirror:blueprint_root_joint_dummyRotationsMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1_mirror:blueprint_hinge_joint_addRotations.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1_mirror:blueprint_hinge_joint_dummyRotationsMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1_mirror:blueprint_hinge_joint_addTx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1_mirror:blueprint_hinge_joint_original_Tx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1_mirror:blueprint_end_joint_addTx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_1_mirror:blueprint_end_joint_original_Tx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "reverse_moduleMaintenanceVisibility.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "moduleVisibilityMultiply.msg" ":defaultRenderUtilityList1.u" -na;
// End of finalMirrorTest.ma
