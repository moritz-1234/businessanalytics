MODULE Module1
    CONST robtarget Target_10:=[
    [303.545214249,268.546383117,176.354764703],
    [0.248289114,0.071063484,-0.705346883,0.660142615],
    [-1,1,-1,4],
    [101.964431046,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_20:=[
    [21.36593139,268.546638743,176.354851894],
    [0.248289182,0.071063545,-0.705346956,0.660142505],
    [0,0,0,4],
    [101.964426452,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_30:=[
    [-190.054081581,268.546856338,176.355031984],
    [0.248289378,0.071063618,-0.70534694,0.66014244],
    [0,0,0,4],
    [101.964434885,9E+09,9E+09,9E+09,9E+09,9E+09]];
    !***********************************************************
    !
    ! Module:  Module1
    !
    ! Description:
    ! Changes to simulated program:
    ! - added for loop to repeat the program
    ! - move to home position in the end
    ! Author: Moritz Hangen
    !
    ! Version: 1.0
    !
    !***********************************************************

    PROC main()
        Path_50;
    ENDPROC
    PROC Path_50()
        VAR num a1;
        FOR a1 FROM 1 TO 10 do
        MoveJ Target_10,v800,z0,Camera\WObj:=wobj0;
        MoveJ Target_20,v800,z0,Camera\WObj:=wobj0;
        MoveJ Target_30,v800,z0,Camera\WObj:=wobj0;
        ENDFOR
        MoveAbsJ Left_homing, v100, z0, tool0;
    ENDPROC
ENDMODULE