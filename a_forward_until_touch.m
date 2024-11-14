
firstInBlue = false;
firstInGreen = false;
firstInYellow = false;

while true
    touch = brick.TouchPressed(4); % Read a touch sensor connected to port 4
    color = brick.ColorCode(3);
    %Port A is right
    %Port D is left

    brick.MoveMotor('AD', 100);
    if color == 5%red
        brick.MoveMotor('AD', 0);
        pause(1);
    end
    if color == 2 && firstInBlue == false%blue
        firstInBlue = true;
        brick.MoveMotor('AD', 0);
        pause(1);
        brick.beep();
        pause(.5);
        brick.beep();
        pause(15);
    end
    if color == 3 && firstInGreen == false%green
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
        brick.MoveMotor('AD',-80);
        pause(0.8);
        brick.MoveMotor('AD', 0);
        pause(1);
        brick.MoveMotor('D',100);
        brick.MoveMotor('A',-40);
        pause(4);
        brick.MoveMotor('AD',0);
        pause(1);
    end
end

