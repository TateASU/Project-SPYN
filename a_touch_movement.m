%modified code
firstInBlue = false;
firstInGreen = false;
firstInYellow = false;

while true
    touch = brick.TouchPressed(4); % Read a touch sensor connected to port 4
    color = brick.ColorCode(3);
    distance = brick.UltrasonicDist(2);

    %display("Color: " + color);

    brick.MoveMotor('A', 66);
    brick.MoveMotor('D', 65);

    if color == 5 % red
        display(color);
        brick.MoveMotor('AD', 0);
        pause(1);
        display(color);
        brick.MoveMotor('A', 65);
        brick.MoveMotor('D', 65);
        pause(0.5)
    end

    if color == 2 && firstInBlue == false % blue
        brick.MoveMotor('AD', 0);
        pause(1);
        brick.beep();
        pause(0.5);
        brick.beep();
        display(color);
        firstInBlue = true;
        pause(10);
    end

    if color == 3 && firstInGreen == false % green
        brick.MoveMotor('AD', 0);
        pause(1);
        brick.beep();
        pause(0.5);
        brick.beep();
        pause(0.5);
        brick.beep();
        display(color);
        firstInGreen = true;
        pause(10);
    end

    if color == 4 && firstInYellow == false % yellow
        brick.MoveMotor('AD', 0);
        pause(1);
        brick.beep();
        pause(0.5);
        brick.beep();
        pause(0.5);
        brick.beep();
        pause(0.5);
        brick.beep();
        display(color);
        firstInYellow = true;
        pause(10);
    end

    display("Touch " + touch);
    if touch == 1
        pause(0.1);
        tuc = brick.TouchPressed(4);
        if tuc == 1
            %display("Touch " + touch);
            brick.MoveMotor('AD', 0);
            pause(1);
            brick.MoveMotor('AD', -50);
            pause(1);
            brick.MoveMotor('D', 36);
            brick.MoveMotor('A', -36);
            pause(1);
            brick.MoveMotor('AD', 0);
            pause(1);
        end
    end

    if distance > 45  && distance < 110
        pause(0.1);
        %distance = brick.UltrasonicDist(2);
        if distance > 45
            display("Distance " + distance);
            brick.MoveMotor('AD', 0);
            pause(1);
            brick.MoveMotor('AD', 50);
            pause(.5);
            brick.MoveMotor('D', -38);
            brick.MoveMotor('A', 38);
            pause(1);
            brick.MoveMotor('AD', 0);
            pause(1);
            brick.MoveMotor('A', 68);
            brick.MoveMotor('D', 65);
            pause(1.5);
        end
    end
end
