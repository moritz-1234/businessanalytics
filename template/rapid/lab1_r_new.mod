MODULE Module1
    CONST robtarget Target_10:=[
    [-192.744347052,-344.762328588,176.645220079],
    [0.071063437,0.248289099,-0.66014254,0.705346963],
    [0,0,0,4],
    [-101.964428741,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_20:=[
    [22.12533699,-344.762515467,176.645274956],
    [0.071063524,0.248289281,-0.660142448,0.705346977],
    [0,0,0,4],
    [-101.964433448,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_30:=[
    [198.587315564,-344.762689927,176.645294354],
    [0.071063631,0.248289428,-0.660142371,0.705346986],
    [0,0,1,4],
    [-101.964427477,9E+09,9E+09,9E+09,9E+09,9E+09]];
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
        Path_20;
    ENDPROC
    PROC Path_20()
        VAR num a1;
        FOR a1 FROM 1 TO 10 do
        MoveJ Target_10,v800,z0,Camera\WObj:=wobj0;
        MoveJ Target_20,v800,z0,Camera\WObj:=wobj0;
        MoveJ Target_30,v800,z0,Camera\WObj:=wobj0;
        ENDFOR
        MoveAbsJ Right_homing, v100, z0, tool0;
        Stop;
    ENDPROC
ENDMODULE