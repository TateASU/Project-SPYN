global key;
InitKeyboard();
while 1
    pause(0.1);
    switch key
        case 'uparrow'
            %disp('Up Arrow Pressed!');
            brick.MoveMotor('AD', 100);
            pause(0.2);
            brick.MoveMotor('AD', 0);
        case 'downarrow'
            %disp('Down Arrow Pressed!');
            brick.MoveMotor('AD', -100);
            pause(0.2);
            brick.MoveMotor('AD', 0);
        case 'leftarrow'
            %disp('Left Arrow Pressed!');
            brick.MoveMotor('D',-100);
            pause(0.2);
            brick.MoveMotor('A',100);
            pause(0.2);
            brick.MoveMotor('AD',0);
        case 'rightarrow'
            %disp('RIght Arrow Pressed!');
             brick.MoveMotor('D',100);
            pause(0.2);
            brick.MoveMotor('A',-100);
            pause(0.2);
            brick.MoveMotor('AD',0);
        case 0
            disp('No Key Pressed!');
        case 'q'
            break;
    end
end
CloseKeyboard();


