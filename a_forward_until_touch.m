
while true
    touch = brick.TouchPressed(4); % Read a touch sensor connected to port 4
    color = brick.ColorCode(3);
    %Port A is right
    %Port D is left
    
    brick.MoveMotor('AD', 100);
    if color == 5%red
        brick.MoveMotor('AD', 0);
        pause(3);
    end
    disp(touch);
    if touch == 1
        brick.MoveMotor('AD', 0);
        pause(1);
        brick.MoveMotor('AD',-80);
        pause(0.8);
        brick.MoveMotor('AD', 0);
        pause(1);
        brick.MoveMotor('D',90);
        brick.MoveMotor('A',-70);
        pause(4);
        brick.MoveMotor('AD',0);
        pause(1); 
    end
    
end