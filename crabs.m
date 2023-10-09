function crabs ()
% Crabs is a kids computer game where a fisherman, called the captain,
% hunts for a very clever and powerful crab.
% Draw the game map and initialize map dimensions.

[mapHeight , mapWidth] = drawMap( "BGImage.png" );

% Initialize captain location, heading and size
xCapt = 1200;
yCapt = 1000;
thetaCapt = -pi/2;
sizeCapt = 50;
moveArm = 'fals';

% Draw the captain and initialize graphics handles
%*********************************************************
% Put your call to drawCapt() here ..... You must give drawCapt its
% input and output arguments.
%*******************************************************

captainGraphics = drawCapt (xCapt, yCapt, thetaCapt, sizeCapt, moveArm);

cmd = "null"; % initial command

while ( cmd != "Q") % While not quit, read keyboard and respond

cmd = kbhit(); % Read the keyboard.

if( cmd == "w" || cmd == "a" || cmd == "d" || cmd == "e")
%Captain has moved. Respond.
% erase old captain

for i=1:length( captainGraphics )
set( captainGraphics(i), 'Visible', 'off' );

endfor
% move capt
[xCapt, yCapt, thetaCapt, moveArm] = moveCapt(cmd, xCapt, yCapt, thetaCapt);

% draw new capt
 captainGraphics = drawCapt( xCapt, yCapt, thetaCapt, sizeCapt, moveArm);
endif
endwhile

endfunction
