global key;
InitKeyboard();
while 1
    pause(0.1);
    switch key
        case 'w'
            %disp('W Pressed!');
            brick.MoveMotor('AD', 50);
            pause(0.2);
            brick.MoveMotor('AD',0);
        case 's'
            %disp('S Pressed!');
            brick.MoveMotor('AD', -50);
            pause(0.2);
            brick.MoveMotor('AD',0);
        case 'a'
            %disp('A Pressed!');
            brick.MoveMotor('D',-20);
            pause(0.1);
            brick.MoveMotor('A',20);
            pause(0.1);
            brick.MoveMotor('AD',0);
        case 'd'
            %disp('D Pressed!');
            brick.MoveMotor('D',20);
            pause(0.1);
            brick.MoveMotor('A',-20);
            pause(0.1);
            brick.MoveMotor('AD',0);
        case 'e'
            disp('E Pressed!');
            brick.MoveMotor('C',-60);
            pause(2);
        case 'r'
            disp('R Pressed!');
            brick.MoveMotor('C',17);
            pause(2);
        case 0
            disp('No Key Pressetd!');
        case 'q'
            break;
        case 't'
            brick.MoveMotor('AD',0);
    end
end
CloseKeyboard();


