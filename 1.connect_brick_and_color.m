brick = ConnectBrick('Tate');
brick.SetColorMode(3, 2);
color = brick.ColorCode(3);

%yellow, green, blue

if color == 5%red
    brick.MoveMotor('AD', 0);
    pause(3);
end


