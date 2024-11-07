%%brick.StopAllMotors('Brake');
%%brick.StopMotor('A', 'Brake');
%%brick.StopMotor('D', 'Brake');


while 4
    touch = brick.TouchPressed(4); % Read a touch sensor connected to port 4.
    color = brick.ColorCode(3);

    brick.MoveMotor('AD', 100);

    if color == 5%red
        brick.MoveMotor('AD', 0);
        pause(3);
    end
    if touch
        brick.MoveMotor('AD',0);
        pause(1);
        brick.MoveMotor('AD',-70);
        pause(1);
        brick.MoveMotor('AD',0);
        pause(1);
        brick.MoveMotor('D',100);
        brick.MoveMotor('A',-100);
        pause(3);
        %%brick.MoveMotor('AD',0);
        %%pause(1);
        %%break;
    end
end