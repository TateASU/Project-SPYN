%%brick.StopAllMotors('Brake');
%%brick.StopMotor('A', 'Brake');
%%brick.StopMotor('D', 'Brake');

while 4
    touch = brick.TouchPressed(4); % Read a touch sensor connected to port 4.

    brick.MoveMotor('AD', 100);

    if touch
        brick.MoveMotor('AD',0);
        pause(1);
        brick.MoveMotor('AD',-70);
        pause(1);
        brick.MoveMotor('AD',0);
        pause(1);
        brick.MoveMotor('D', -50);
        brick.MoveMotor('A', 50);
        pause(4);
        brick.MoveMotor('AD',0);
        pause(1);
    end
end