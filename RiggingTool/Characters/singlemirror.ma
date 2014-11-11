//Maya ASCII 2012 scene
//Name: singlemirror.ma
//Last modified: Mon, Jun 04, 2012 01:55:43 AM
//Codeset: 1252
requires maya "2012";
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
createNode transform -n "SingleJointSegment__instance_1:module_grp" -p "character_grp";
	addAttr -ci true -sn "hierarchicalScale" -ln "hierarchicalScale" -at "float";
lockNode -l 1 -lu 1;
createNode transform -n "SingleJointSegment__instance_1:HOOK_IN" -p "SingleJointSegment__instance_1:module_grp";
	setAttr ".s";
	setAttr ".sy";
lockNode -l 1 -lu 1;
createNode transform -n "SingleJointSegment__instance_1:blueprint_joints_grp" -p
		 "SingleJointSegment__instance_1:HOOK_IN";
	addAttr -ci true -sn "controlModulesInstalled" -ln "controlModulesInstalled" -min 
		0 -max 1 -at "bool";
	setAttr ".ove" yes;
lockNode -l 1 -lu 1;
createNode joint -n "SingleJointSegment__instance_1:blueprint_root_joint" -p "SingleJointSegment__instance_1:blueprint_joints_grp";
	setAttr ".t" -type "double3" 7.6623478944937844 0 0 ;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "SingleJointSegment__instance_1:blueprint_end_joint" -p "SingleJointSegment__instance_1:blueprint_root_joint";
	setAttr ".t";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode transform -n "SingleJointSegment__instance_1:creationPose_joints_grp" 
		-p "SingleJointSegment__instance_1:HOOK_IN";
lockNode -l 1 -lu 1;
createNode joint -n "SingleJointSegment__instance_1:creationPose_root_joint" -p "SingleJointSegment__instance_1:creationPose_joints_grp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.6623478944937844 0 0 ;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "SingleJointSegment__instance_1:creationPose_end_joint" -p "SingleJointSegment__instance_1:creationPose_root_joint";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.0000000000000009 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode transform -n "SingleJointSegment__instance_1:SETTINGS" -p "SingleJointSegment__instance_1:module_grp";
	addAttr -ci true -sn "activeModule" -ln "activeModule" -min 0 -max 0 -en "None" 
		-at "enum";
	addAttr -ci true -sn "creationPoseWeight" -ln "creationPoseWeight" -dv 1 -at "float";
	setAttr ".v" no;
lockNode -l 1 -lu 1;
createNode locator -n "SingleJointSegment__instance_1:SETTINGSShape" -p "SingleJointSegment__instance_1:SETTINGS";
	setAttr -k off ".v";
lockNode -l 1 -lu 1;
createNode transform -n "SingleJointSegment__instance_1_mirror:module_grp" -p "character_grp";
	addAttr -ci true -sn "mirrorInfo" -ln "mirrorInfo" -min 0 -max 3 -en "node:x:y:z" 
		-at "enum";
	addAttr -ci true -sn "hierarchicalScale" -ln "hierarchicalScale" -at "float";
	setAttr ".mirrorInfo" 1;
lockNode -l 1 -lu 1;
createNode transform -n "SingleJointSegment__instance_1_mirror:HOOK_IN" -p "SingleJointSegment__instance_1_mirror:module_grp";
	setAttr ".s";
	setAttr ".sy";
lockNode -l 1 -lu 1;
createNode transform -n "SingleJointSegment__instance_1_mirror:blueprint_joints_grp" 
		-p "SingleJointSegment__instance_1_mirror:HOOK_IN";
	addAttr -ci true -sn "controlModulesInstalled" -ln "controlModulesInstalled" -min 
		0 -max 1 -at "bool";
	setAttr ".ove" yes;
lockNode -l 1 -lu 1;
createNode joint -n "SingleJointSegment__instance_1_mirror:blueprint_root_joint" 
		-p "SingleJointSegment__instance_1_mirror:blueprint_joints_grp";
	setAttr ".t" -type "double3" -7.6623478944937844 0 0 ;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 0 0 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "SingleJointSegment__instance_1_mirror:blueprint_end_joint" 
		-p "SingleJointSegment__instance_1_mirror:blueprint_root_joint";
	setAttr ".t";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode transform -n "SingleJointSegment__instance_1_mirror:creationPose_joints_grp" 
		-p "SingleJointSegment__instance_1_mirror:HOOK_IN";
lockNode -l 1 -lu 1;
createNode joint -n "SingleJointSegment__instance_1_mirror:creationPose_root_joint" 
		-p "SingleJointSegment__instance_1_mirror:creationPose_joints_grp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -7.6623478944937844 0 0 ;
	setAttr ".s";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 0 0 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode joint -n "SingleJointSegment__instance_1_mirror:creationPose_end_joint" 
		-p "SingleJointSegment__instance_1_mirror:creationPose_root_joint";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -4.0000000000000009 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
lockNode -l 1 -lu 1;
createNode transform -n "SingleJointSegment__instance_1_mirror:SETTINGS" -p "SingleJointSegment__instance_1_mirror:module_grp";
	addAttr -ci true -sn "activeModule" -ln "activeModule" -min 0 -max 0 -en "None" 
		-at "enum";
	addAttr -ci true -sn "creationPoseWeight" -ln "creationPoseWeight" -dv 1 -at "float";
	setAttr ".v" no;
lockNode -l 1 -lu 1;
createNode locator -n "SingleJointSegment__instance_1_mirror:SETTINGSShape" -p "SingleJointSegment__instance_1_mirror:SETTINGS";
	setAttr -k off ".v";
lockNode -l 1 -lu 1;
createNode container -n "character_container";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr -s 5 ".boc";
	setAttr -s 4 ".ish[1:4]" yes yes yes yes;
	setAttr ".ctor" -type "string" "cat";
	setAttr ".cdat" -type "string" "2012/06/04 01:55:43";
	setAttr ".aal" -type "attributeAlias" {"animControlVis","borderConnections[0]","instance_1_activeModule"
		,"borderConnections[1]","instance_1_creationPoseWeight","borderConnections[2]","instance_1_mirror_activeModule"
		,"borderConnections[3]","instance_1_mirror_creationPoseWeight","borderConnections[4]"
		} ;
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout9";
	setAttr ".ihi" 0;
	setAttr -s 5 ".hyp";
createNode reverse -n "reverse_moduleMaintenanceVisibility";
	setAttr ".i";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "moduleVisibilityMultiply";
	setAttr ".i1";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode container -n "SingleJointSegment__instance_1:module_container";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr -s 2 ".boc";
	setAttr ".ctor" -type "string" "cat";
	setAttr ".cdat" -type "string" "2012/06/04 01:55:33";
	setAttr ".aal" -type "attributeAlias" {"activeModule","borderConnections[0]","creationPoseWeight"
		,"borderConnections[1]"} ;
lockNode -l 1 -lu 1;
createNode container -n "SingleJointSegment__instance_1_mirror:module_container";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr -s 2 ".boc";
	setAttr ".ctor" -type "string" "cat";
	setAttr ".cdat" -type "string" "2012/06/04 01:55:33";
	setAttr ".aal" -type "attributeAlias" {"activeModule","borderConnections[0]","creationPoseWeight"
		,"borderConnections[1]"} ;
lockNode -l 1 -lu 1;
createNode container -n "SingleJointSegment__instance_1:blueprint_container";
	setAttr ".isc" yes;
	setAttr ".ctor" -type "string" "cat";
	setAttr ".cdat" -type "string" "2012/06/04 01:55:33";
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout6";
	setAttr ".ihi" 0;
	setAttr -s 5 ".hyp";
createNode hyperLayout -n "hyperLayout5";
	setAttr ".ihi" 0;
	setAttr -s 11 ".hyp";
createNode unitConversion -n "unitConversion1";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "SingleJointSegment__instance_1:blueprint_end_joint_addTx";
	setAttr ".i1";
	setAttr ".i1";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "SingleJointSegment__instance_1:blueprint_end_joint_original_Tx";
	setAttr ".i1" -type "float3" 4 0 0 ;
	setAttr ".i1";
	setAttr -l on ".i1x";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "SingleJointSegment__instance_1:blueprint_root_joint_dummyRotationsMultiply";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "SingleJointSegment__instance_1:blueprint_root_joint_addRotations";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout8";
	setAttr ".ihi" 0;
	setAttr -s 5 ".hyp";
createNode container -n "SingleJointSegment__instance_1_mirror:blueprint_container";
	setAttr ".isc" yes;
	setAttr ".ctor" -type "string" "cat";
	setAttr ".cdat" -type "string" "2012/06/04 01:55:33";
lockNode -l 1 -lu 1;
createNode hyperLayout -n "hyperLayout7";
	setAttr ".ihi" 0;
	setAttr -s 11 ".hyp";
createNode plusMinusAverage -n "SingleJointSegment__instance_1_mirror:blueprint_end_joint_addTx";
	setAttr ".i1";
	setAttr ".i1";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "SingleJointSegment__instance_1_mirror:blueprint_root_joint_dummyRotationsMultiply";
lockNode -l 1 -lu 1;
createNode multiplyDivide -n "SingleJointSegment__instance_1_mirror:blueprint_end_joint_original_Tx";
	setAttr ".i1" -type "float3" -4 0 0 ;
	setAttr ".i1";
	setAttr -l on ".i1x";
	setAttr ".i2";
lockNode -l 1 -lu 1;
createNode plusMinusAverage -n "SingleJointSegment__instance_1_mirror:blueprint_root_joint_addRotations";
	setAttr ".i3";
	setAttr ".i3";
lockNode -l 1 -lu 1;
createNode unitConversion -n "unitConversion2";
	setAttr ".cf" 0.017453292519943295;
lockNode -l 1 -lu 1;
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
	setAttr -s 10 ".u";
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
connectAttr "SingleJointSegment__instance_1:HOOK_IN.sy" "SingleJointSegment__instance_1:module_grp.hierarchicalScale"
		 -l on;
connectAttr "character_grp.moduleMaintenanceVisibility" "SingleJointSegment__instance_1:blueprint_joints_grp.v"
		 -l on;
connectAttr "unitConversion1.o" "SingleJointSegment__instance_1:blueprint_root_joint.r"
		 -l on;
connectAttr "SingleJointSegment__instance_1:blueprint_root_joint.s" "SingleJointSegment__instance_1:blueprint_end_joint.is"
		 -l on;
connectAttr "SingleJointSegment__instance_1:blueprint_end_joint_addTx.o1" "SingleJointSegment__instance_1:blueprint_end_joint.tx"
		 -l on;
connectAttr "SingleJointSegment__instance_1:creationPose_root_joint.s" "SingleJointSegment__instance_1:creationPose_end_joint.is"
		 -l on;
connectAttr "SingleJointSegment__instance_1_mirror:HOOK_IN.sy" "SingleJointSegment__instance_1_mirror:module_grp.hierarchicalScale"
		 -l on;
connectAttr "character_grp.moduleMaintenanceVisibility" "SingleJointSegment__instance_1_mirror:blueprint_joints_grp.v"
		 -l on;
connectAttr "unitConversion2.o" "SingleJointSegment__instance_1_mirror:blueprint_root_joint.r"
		 -l on;
connectAttr "SingleJointSegment__instance_1_mirror:blueprint_root_joint.s" "SingleJointSegment__instance_1_mirror:blueprint_end_joint.is"
		 -l on;
connectAttr "SingleJointSegment__instance_1_mirror:blueprint_end_joint_addTx.o1" "SingleJointSegment__instance_1_mirror:blueprint_end_joint.tx"
		 -l on;
connectAttr "SingleJointSegment__instance_1_mirror:creationPose_root_joint.s" "SingleJointSegment__instance_1_mirror:creationPose_end_joint.is"
		 -l on;
connectAttr "character_grp.animationControlVisibility" "character_container.boc[0]"
		 -l on;
connectAttr "SingleJointSegment__instance_1:module_container.boc[0]" "character_container.boc[1]"
		 -l on;
connectAttr "SingleJointSegment__instance_1:module_container.boc[1]" "character_container.boc[2]"
		 -l on;
connectAttr "SingleJointSegment__instance_1_mirror:module_container.boc[0]" "character_container.boc[3]"
		 -l on;
connectAttr "SingleJointSegment__instance_1_mirror:module_container.boc[1]" "character_container.boc[4]"
		 -l on;
connectAttr "hyperLayout9.msg" "character_container.hl" -l on;
connectAttr "SingleJointSegment__instance_1:module_container.msg" "hyperLayout9.hyp[0].dn"
		;
connectAttr "SingleJointSegment__instance_1_mirror:module_container.msg" "hyperLayout9.hyp[1].dn"
		;
connectAttr "character_grp.msg" "hyperLayout9.hyp[2].dn";
connectAttr "reverse_moduleMaintenanceVisibility.msg" "hyperLayout9.hyp[3].dn";
connectAttr "moduleVisibilityMultiply.msg" "hyperLayout9.hyp[4].dn";
connectAttr "character_grp.moduleMaintenanceVisibility" "reverse_moduleMaintenanceVisibility.ix"
		 -l on;
connectAttr "reverse_moduleMaintenanceVisibility.ox" "moduleVisibilityMultiply.i1x"
		 -l on;
connectAttr "character_grp.animationControlVisibility" "moduleVisibilityMultiply.i2x"
		 -l on;
connectAttr "SingleJointSegment__instance_1:SETTINGS.activeModule" "SingleJointSegment__instance_1:module_container.boc[0]"
		;
connectAttr "SingleJointSegment__instance_1:SETTINGS.creationPoseWeight" "SingleJointSegment__instance_1:module_container.boc[1]"
		;
connectAttr "hyperLayout6.msg" "SingleJointSegment__instance_1:module_container.hl"
		 -l on;
connectAttr "SingleJointSegment__instance_1_mirror:SETTINGS.activeModule" "SingleJointSegment__instance_1_mirror:module_container.boc[0]"
		;
connectAttr "SingleJointSegment__instance_1_mirror:SETTINGS.creationPoseWeight" "SingleJointSegment__instance_1_mirror:module_container.boc[1]"
		;
connectAttr "hyperLayout8.msg" "SingleJointSegment__instance_1_mirror:module_container.hl"
		 -l on;
connectAttr "hyperLayout5.msg" "SingleJointSegment__instance_1:blueprint_container.hl"
		 -l on;
connectAttr "SingleJointSegment__instance_1:module_grp.msg" "hyperLayout6.hyp[0].dn"
		;
connectAttr "SingleJointSegment__instance_1:HOOK_IN.msg" "hyperLayout6.hyp[1].dn"
		;
connectAttr "SingleJointSegment__instance_1:SETTINGS.msg" "hyperLayout6.hyp[2].dn"
		;
connectAttr "SingleJointSegment__instance_1:blueprint_container.msg" "hyperLayout6.hyp[3].dn"
		;
connectAttr "SingleJointSegment__instance_1:SETTINGSShape.msg" "hyperLayout6.hyp[4].dn"
		;
connectAttr "SingleJointSegment__instance_1:blueprint_root_joint_addRotations.msg" "hyperLayout5.hyp[0].dn"
		;
connectAttr "SingleJointSegment__instance_1:blueprint_root_joint_dummyRotationsMultiply.msg" "hyperLayout5.hyp[1].dn"
		;
connectAttr "SingleJointSegment__instance_1:blueprint_end_joint_addTx.msg" "hyperLayout5.hyp[2].dn"
		;
connectAttr "SingleJointSegment__instance_1:blueprint_end_joint_original_Tx.msg" "hyperLayout5.hyp[3].dn"
		;
connectAttr "SingleJointSegment__instance_1:blueprint_joints_grp.msg" "hyperLayout5.hyp[4].dn"
		;
connectAttr "SingleJointSegment__instance_1:creationPose_joints_grp.msg" "hyperLayout5.hyp[5].dn"
		;
connectAttr "unitConversion1.msg" "hyperLayout5.hyp[6].dn";
connectAttr "SingleJointSegment__instance_1:blueprint_root_joint.msg" "hyperLayout5.hyp[7].dn"
		;
connectAttr "SingleJointSegment__instance_1:blueprint_end_joint.msg" "hyperLayout5.hyp[8].dn"
		;
connectAttr "SingleJointSegment__instance_1:creationPose_root_joint.msg" "hyperLayout5.hyp[9].dn"
		;
connectAttr "SingleJointSegment__instance_1:creationPose_end_joint.msg" "hyperLayout5.hyp[10].dn"
		;
connectAttr "SingleJointSegment__instance_1:blueprint_root_joint_addRotations.o3" "unitConversion1.i"
		 -l on;
connectAttr "SingleJointSegment__instance_1:blueprint_end_joint_original_Tx.ox" "SingleJointSegment__instance_1:blueprint_end_joint_addTx.i1[0]"
		 -l on;
connectAttr "SingleJointSegment__instance_1:SETTINGS.creationPoseWeight" "SingleJointSegment__instance_1:blueprint_end_joint_original_Tx.i2x"
		 -l on;
connectAttr "SingleJointSegment__instance_1:blueprint_root_joint_dummyRotationsMultiply.o" "SingleJointSegment__instance_1:blueprint_root_joint_addRotations.i3[0]"
		 -l on;
connectAttr "SingleJointSegment__instance_1_mirror:module_grp.msg" "hyperLayout8.hyp[0].dn"
		;
connectAttr "SingleJointSegment__instance_1_mirror:HOOK_IN.msg" "hyperLayout8.hyp[1].dn"
		;
connectAttr "SingleJointSegment__instance_1_mirror:SETTINGS.msg" "hyperLayout8.hyp[2].dn"
		;
connectAttr "SingleJointSegment__instance_1_mirror:blueprint_container.msg" "hyperLayout8.hyp[3].dn"
		;
connectAttr "SingleJointSegment__instance_1_mirror:SETTINGSShape.msg" "hyperLayout8.hyp[4].dn"
		;
connectAttr "hyperLayout7.msg" "SingleJointSegment__instance_1_mirror:blueprint_container.hl"
		 -l on;
connectAttr "SingleJointSegment__instance_1_mirror:blueprint_root_joint_addRotations.msg" "hyperLayout7.hyp[0].dn"
		;
connectAttr "SingleJointSegment__instance_1_mirror:blueprint_root_joint_dummyRotationsMultiply.msg" "hyperLayout7.hyp[1].dn"
		;
connectAttr "SingleJointSegment__instance_1_mirror:blueprint_end_joint_addTx.msg" "hyperLayout7.hyp[2].dn"
		;
connectAttr "SingleJointSegment__instance_1_mirror:blueprint_end_joint_original_Tx.msg" "hyperLayout7.hyp[3].dn"
		;
connectAttr "SingleJointSegment__instance_1_mirror:blueprint_joints_grp.msg" "hyperLayout7.hyp[4].dn"
		;
connectAttr "SingleJointSegment__instance_1_mirror:creationPose_joints_grp.msg" "hyperLayout7.hyp[5].dn"
		;
connectAttr "unitConversion2.msg" "hyperLayout7.hyp[6].dn";
connectAttr "SingleJointSegment__instance_1_mirror:blueprint_root_joint.msg" "hyperLayout7.hyp[7].dn"
		;
connectAttr "SingleJointSegment__instance_1_mirror:blueprint_end_joint.msg" "hyperLayout7.hyp[8].dn"
		;
connectAttr "SingleJointSegment__instance_1_mirror:creationPose_root_joint.msg" "hyperLayout7.hyp[9].dn"
		;
connectAttr "SingleJointSegment__instance_1_mirror:creationPose_end_joint.msg" "hyperLayout7.hyp[10].dn"
		;
connectAttr "SingleJointSegment__instance_1_mirror:blueprint_end_joint_original_Tx.ox" "SingleJointSegment__instance_1_mirror:blueprint_end_joint_addTx.i1[0]"
		 -l on;
connectAttr "SingleJointSegment__instance_1_mirror:SETTINGS.creationPoseWeight" "SingleJointSegment__instance_1_mirror:blueprint_end_joint_original_Tx.i2x"
		 -l on;
connectAttr "SingleJointSegment__instance_1_mirror:blueprint_root_joint_dummyRotationsMultiply.o" "SingleJointSegment__instance_1_mirror:blueprint_root_joint_addRotations.i3[0]"
		 -l on;
connectAttr "SingleJointSegment__instance_1_mirror:blueprint_root_joint_addRotations.o3" "unitConversion2.i"
		 -l on;
connectAttr "SingleJointSegment__instance_1:blueprint_root_joint_addRotations.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "SingleJointSegment__instance_1:blueprint_root_joint_dummyRotationsMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "SingleJointSegment__instance_1:blueprint_end_joint_addTx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "SingleJointSegment__instance_1:blueprint_end_joint_original_Tx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "SingleJointSegment__instance_1_mirror:blueprint_root_joint_addRotations.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "SingleJointSegment__instance_1_mirror:blueprint_root_joint_dummyRotationsMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "SingleJointSegment__instance_1_mirror:blueprint_end_joint_addTx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "SingleJointSegment__instance_1_mirror:blueprint_end_joint_original_Tx.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "reverse_moduleMaintenanceVisibility.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "moduleVisibilityMultiply.msg" ":defaultRenderUtilityList1.u" -na;
// End of singlemirror.ma