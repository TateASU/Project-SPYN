%%brick.StopAllMotors('Brake');
%%brick.StopMotor('A', 'Brake');
%%brick.StopMotor('D', 'Brake');



firstInBlue = false;
firstInGreen = false;
firstInYellow = false;

while true
    touch = brick.TouchPressed(4); % Read a touch sensor connected to port 4
    color = brick.ColorCode(3);
    distance = brick.UltrasonicDist(2);


    %Port A is right
    %Port D is left

    brick.MoveMotor('AD', 00);
    pause(1.5);
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
    if touch == 1 || distance > 30
        display(distance);
        for i = 0; i < 10; i++
            brick.MoveMotor('D',100);
            pause(0.2);
            brick.MoveMotor('A',-100);
            pause(0.2);
            brick.MoveMotor('AD',0);
    else
        display(distance);
        brick.MoveMotor('AD', 0);
        pause(1);
        brick.MoveMotor('AD', 0);
        pause(1);
        brick.MoveMotor('D',80);
        brick.MoveMotor('A',-40);
        pause(4);
        brick.MoveMotor('AD',0);
        pause(1);
    end
    touch = 0;
end

