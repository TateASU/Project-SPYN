%brick = ConnectBrick('TATE');

while 4
    touch = brick.TouchPressed(4); % Read a touch sensor connected to port 4.

    brick.beep();

    if touch
        brick.beep();
        break;
    end
end