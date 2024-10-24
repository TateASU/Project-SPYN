%brick = ConnectBrick('Tate');
touch = brick.TouchPressed(4);
%PortA is the right wheel
%PortD is the left wheel

%while touch == false
%    brick.MoveMotor('AD', 0);
%end

%if touch
%    brick.MoveMotor('AD', -50);
%    pause(1);
%    brick.MoveMotor('A', -20);
%    pause(1);
%    brick.MoveMotor('D', 20);
%    pause(1);
%end

brick.StopAllMotors('Brake');

