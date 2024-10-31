while 4
    touch = brick.TouchPressed(4); % Read a touch sensor connected to port 4.
    %brick.SetColorMode(3, 2);
    %color = brick.ColorCode(3);
    %Port A is right
    %Port D is left
    brick.MoveMotor('AD', 100);
    if color == 5%red
        brick.MoveMotor('AD', 0);
        pause(3);
    end
    if touch
        brick.MoveMotor('AD', 0);
        pause(1);
        brick.MoveMotor('AD',-80);
        pause(.5);
        brick.MoveMotor('AD', 0);
        pause(1);
        brick.MoveMotor('D',100);
        brick.MoveMotor('A',-30);
        pause(4);
        brick.MoveMotor('AD',0);
        pause(1);
        break;
    end
end