%mostly og code
firstInBlue = false;
firstInGreen = false;
firstInYellow = false;

while true
    touch = brick.TouchPressed(4); % Read a touch sensor connected to port 4
    color = brick.ColorCode(3);
    distance = brick.UltrasonicDist(2);


    %Port A is right
    %Port D is left

    brick.MoveMotor('AD', 70);

    if color == 5%red
        display(color);
        brick.MoveMotor('AD', 0);
        pause(1);
        display(color);
    end
    if color == 2 && firstInBlue == false%blue
        display(color);
        firstInBlue = true;
        brick.MoveMotor('AD', 0);
        pause(1);
        brick.beep();
        pause(.5);
        brick.beep();
        pause(15);
    end
    if color == 3 && firstInGreen == false%green
        display(color);
        firstInGreen = true;
        brick.MoveMotor('AD', 0);
        pause(1);
        brick.beep();
        pause(.5);
        brick.beep();
        pause(.5);
        brick.beep();
        pause(15);
    end
    if color == 4 && firstInYellow == false%yellow
        display(color);
        firstInYellow = true;
        brick.MoveMotor('AD', 0);
        pause(1);
        brick.beep();
        pause(.5);
        brick.beep();
        pause(.5);
        brick.beep();
        pause(.5);
        brick.beep();
        pause(15);
    end

    disp(touch);
    if touch == 1
        brick.MoveMotor('AD', 0);
        pause(1);
        brick.MoveMotor('AD', -50);
        pause(1);
        brick.MoveMotor('D',20);
        brick.MoveMotor('A',-20);
        pause(1);
        brick.MoveMotor('AD',0);
        pause(1);
    end
    touch = 0;

    if distance > 50
        display(distance);
        brick.MoveMotor('AD', 0);
        pause(1);
        brick.MoveMotor('AD', 50);
        pause(1);
        brick.MoveMotor('D',-20);
        brick.MoveMotor('A',20);
        pause(1);
        brick.MoveMotor('AD',0);
        pause(1);
        brick.MoveMotor('AD', 70);
        pause(2);
    end
    
end

