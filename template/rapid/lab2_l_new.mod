MODULE Module1
    CONST robtarget Target_10:=[
    [82.500049925,27.500150805,199.99990182],
    [0.11577319,0.99150356,-0.058906249,-0.006878385],
    [-1,2,-3,4],
    [108.949984802,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_20:=[
    [82.500038549,27.500203243,29.999906438],
    [0.115773155,0.991503566,-0.058906221,-0.006878329],
    [-1,2,-2,4],
    [108.949988939,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_30:=[
    [82.500049925,27.500150805,199.99990182],
    [0.11577319,0.99150356,-0.058906249,-0.006878385],
    [-1,2,-3,4],
    [108.949984802,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_40:=[
    [192.500087119,82.500184655,199.999854372],
    [0.115773105,0.991503575,-0.058906174,-0.006878377],
    [-1,2,-2,4],
    [108.949987701,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_50:=[
    [192.500042059,82.500237163,29.999867372],
    [0.115773057,0.991503578,-0.058906219,-0.006878363],
    [-1,2,-2,4],
    [108.949987316,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_60:=[
    [192.499932212,82.500276953,199.999726301],
    [0.115773277,0.991503513,-0.058906844,-0.006878673],
    [-1,2,-2,4],
    [108.950009518,9E+09,9E+09,9E+09,9E+09,9E+09]];^

    !***********************************************************
    !
    ! Module:  Module1
    !
    ! Description:
    !   Variant Nr. 5
    ! Changes to simulation:
    ! - removed commented out gripper control
    ! - stop in home position
    ! Author: Moritz Hangen
    !
    ! Version: 1.0
    !
    !***********************************************************
    PROC main()
        g_Init;
        g_Calibrate\Grip;
        Path_10;
        MoveAbsJ Left_homing, v100, z0, tool0;
        stop;
        ENDPROC
        PROC Path_10()
        MoveJ Target_10, v400, fine, Servo\WObj:=UCS;
        WaitTime \InPos,0;
        g_MoveTo 25;
        MoveJ Target_20, v400, fine, Servo\WObj:=UCS;
        WaitTime \InPos,0;
        g_GripIn;
        MoveJ Target_30, v400, fine, Servo\WObj:=UCS;
        MoveJ Target_40, v400, fine, Servo\WObj:=UCS;
        MoveJ Target_50, v400, fine, Servo\WObj:=UCS;
        WaitTime \InPos,0;
        g_MoveTo 25;
        MoveJ Target_60, v400, fine, Servo\WObj:=UCS;
        WaitTime \InPos,0;
        g_MoveTo 0;
    ENDPROC
ENDMODULE