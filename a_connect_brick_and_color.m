%brick = ConnectBrick('Tate');
color = brick.ColorCode(3);


if color == 5%red
    brick.MoveMotor('AD', 0);
    pause(1);
end

if color == 2%blue
    brick.MoveMotor('AD', 0);
    pause(1);
    brick.beep();
    brick.beep();
end

if color == 3%green
    brick.MoveMotor('AD', 0);
    pause(1);
    brick.beep();
    brick.beep();
    brick.beep();
end

if color == 4%yellow
    brick.MoveMotor('AD', 0);
    pause(1);
    brick.beep();
    brick.beep();
    brick.beep();
    brick.beep();
end