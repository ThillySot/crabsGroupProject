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


% Inititalize crab location, heading, and size
xCrab = 1000;
yCrab = 1100;
thetaCrab = -pi/2;
sizeCrab = 100;
crabGraphics = drawCrabs (xCrab , yCrab , thetaCrab , sizeCrab)

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
   [xCapt, yCapt, thetaCapt, moveArm] = moveCapt(cmd, xCapt, yCapt, thetaCapt, sizeCapt, mapWidth, mapHeight);

   % draw new capt
   captainGraphics = drawCapt( xCapt, yCapt, thetaCapt, sizeCapt, moveArm);





##   %crab inputs
##   elseif (cmd == "j" || cmd == "l" || cmd == "k" || cmd == "i" || cmd == ",")
##   %erase old crab
##   for (i=1:length(crabGraphics))
##                set(crabGraphics(i), 'Visible','off');
##   endfor
##
##   %move crab
##   [xCrab, yCrab, thetaCrab] = moveCrabs(cmd,xCrab,yCrab,thetaCrab, sizeCrab, mapHeight, mapWidth);
##
##   %draw new crab
##   crabGraphics = drawCrabs (xCrab , yCrab , thetaCrab , sizeCrab)

    %crab movement beta testing
    if(xCrab != xCapt && yCrab != yCapt)
    %erase old crab
   for (i=1:length(crabGraphics))
                set(crabGraphics(i), 'Visible','off');
   endfor

   %move crab
   [xCrab, yCrab, thetaCrab] = crabTracking (xCapt, yCapt, xCrab, yCrab);

   %draw new crab
   crabGraphics = drawCrabs (xCrab , yCrab , thetaCrab , sizeCrab);
   endif

endif
endwhile

close all

endfunction
