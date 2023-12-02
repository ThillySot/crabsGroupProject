function crabs ()
% Crabs is a kids computer game where a fisherman, called the captain,
% hunts for a very clever and powerful crab.
% Draw the game map and initialize map dimensions.

restart = 1;
while(restart)

  %have start up screen
  level = drawStartScreen("START-SCREEN.png");


  [numCrabs, numJelly] = setEnemies(level);


  [mapHeight , mapWidth] = drawMap( "BGImage.png" );
  %width = 2048
  %height = 1317
  % Initialize captain location, heading and size
  xCapt = 1200;
  yCapt = 1000;
  thetaCapt = 0;
  sizeCapt = 50;
  moveArm = 'fals';
  spearOff = false;

% Draw the captain and initialize graphics handles
[captainGraphics, capt2, pt16, captHand, xSpearPoint, ySpearPoint] = drawCapt (xCapt, yCapt, thetaCapt, sizeCapt, moveArm, spearOff);

% Inititalize crab location, heading, and size

xCrab = 250;
yCrab = 250;
thetaCrab = 0;
sizeCrab = 150;
crabStep = 1;
crabSpeedChange = .2*crabStep;
crabStepWhen_E_Is_Pressed = crabStep - crabSpeedChange;
eCounter = 0;
crabStunned = 0;
crabStunnedDuration = 300;
E_is_Pressed = false;

%initialize the small crab location, heading and size
  xSmallCrab = rand(1,numCrabs)*mapWidth;
  ySmallCrab = 0.75*mapHeight + rand(1,numCrabs)*mapHeight/4;
  thetaSmallCrab = ones(1,numCrabs)*(-pi/2);
  isCrabCaught = zeros(1,numCrabs);
  sizeSmallCrab = 50;
  crabsCaught = 0;

  for j=1:numCrabs
    if(!isCrabCaught(j))
      smallCrabGraphics(:,j) = drawSmallCrab (xSmallCrab(j), ySmallCrab(j), thetaSmallCrab(j), sizeSmallCrab);
    endif
  endfor


% Draw the crab and initialize graphics handles
[crabGraphics, crab2] = drawCrabs (xCrab , yCrab , thetaCrab , sizeCrab);

% draw the health-bar and initialize graphics Handles
healthGraphics = drawHealthbar(mapWidth, mapHeight);
j=0;
sniperSize = mapWidth/20;

%initialize jellyfish
  xJelly = rand(1, numJelly)*mapWidth;
  yJelly = rand(1, numJelly)*mapHeight;
  thetaJelly = ones(1,numJelly)*(-pi/2);
  sizeJelly = 25;
  jellySting = 2;

% initiates the number of jellyfish
  for k=1:numJelly
    jellyGraphics(:,k) = drawJelly (xJelly(k), yJelly(k), thetaJelly(k), sizeJelly);
  endfor



cmd = "null";
piece1 = false;
piece2 = false;
piece3 = false;
piece4 = false;
piece5 = false;

##piece1 = true;
##piece2 = true;
##piece3 = true;
##piece4 = true;
##piece5 = true;

%other variables
sniperRifleCraft = false;
spearCounter = 0;
bulletHit = "null";
you_win = false;
setCounter = 0;
invincibility = 0;
gunTrigger = 0;
bulletInBounds = 0;
reloadDefault = 20;
reload = reloadDefault;
reloadYes = 0;
combatLog = 0;
hasBeenCrafted = 0;
healthIndex = 0;
partsNowExist = false;
partsAllCollected = false;

%while the user doesn't quit and while the Captain has lives left
##while ( cmd != "Q" && j < length(healthGraphics) && you_win == false);


while(1)
    commandwindow();  % keeps the main focus on the window

    cmd = kbhit(1); % Read the keyboard.

if (numJelly > 0)
% jellyfish stuff
 for k=1:numJelly
   %delete old jellyfish
  for i=1:length(jellyGraphics(:,k))
    delete(jellyGraphics(i,k));
  endfor

  % move jellyfish
  [xJelly(k), yJelly(k), thetaJelly(k)] = moveJelly(level,xJelly(k),yJelly(k),thetaJelly(k),sizeJelly,mapWidth,mapHeight);

  %draw Jellyfish
  jellyGraphics(:,k) = drawJelly(xJelly(k),yJelly(k),thetaJelly(k),sizeJelly);

  endfor
endif



    if (crabStunned < 0) %if crab is not stunned
        distFromCrab2 = sqrt(  (xCrab - xCapt)^2 + (yCrab - yCapt)^2  ); % Capt's distance from crab (Pythag Thm)

        % erase old crab
        for (i=1:length(crabGraphics));
            set(crabGraphics(i), 'Visible','off');
        endfor

        %move crab
        xCapt2 = pt16(1, 1);
        yCapt2 = pt16(2, 1);
        [xCrab, yCrab, thetaCrab, crabStep] = crabTracking(xCapt2, yCapt2, xCrab, yCrab, crabStep, distFromCrab2, thetaCapt);

        %draw new crab
        [crabGraphics, crab2] = drawCrabs (xCrab , yCrab , thetaCrab , sizeCrab);

        if (distFromCrab2 <= 1.5*sizeCapt && invincibility < 0) %if Capt touched crab off immunity protection

            if (healthIndex <= length(healthGraphics) - 6); % actiavtes if captain has lives left. otherwise, while loop ends

              for i=1+healthIndex: 6+healthIndex; %for loop removes one life off the screen
                  set( healthGraphics(i), 'Visible', 'off' );
              endfor

              healthIndex = healthIndex + 6  %adds 6 to j because each life consists of 6 points
              captWasHit = true %indicates in Command Window the captain was hit
              invincibility = 5; %immunity frames after getting hit
            endif
        endif

        if (invincibility >= 0)
            invincibility = invincibility - 1 %invincibility time goes down by 1
        endif

        crabStep = crabStep + crabSpeedChange; %crab goes faster
    else %if crab is stunned
      crabStunned = crabStunned - 1; %crab stun duration goes down by 1
    endif

    if (healthIndex >= 18)
      break;
    endif


##    % jellyfish sting code
##
##     for k=1:numJelly
##
##      if(getDist(xJelly(k),yJelly(k),xCapt,yCapt) < 3*sizeCapt)
##        %healthCapt = healthCapt - jellySting;
##
##        % ends the game if the captain's health is at 0
##          if (healthCapt <= 0)
##            break
##          endif
##      endif
##    endfor

 %=======================

      if (crabsCaught == numCrabs && partsNowExist == false)

          %draw the sniper-scope and initialize graphics handles
          sniperScopeSize = mapWidth/20;
          scopeGraphics = drawSniperScope(mapWidth, mapHeight);
          xSniperScope = (3*mapWidth/4) + 2.5*sniperScopeSize; %center x value
          ySniperScope = (mapHeight/4) + 1.5*sniperScopeSize; %center y value

          %draw the sniper-body and initialize graphics handles
          sniperBodySize = mapWidth/20;
          sniperBodyGraphics = drawSniperBody(mapWidth, mapHeight); %7/8
          xSniperBody = (5*mapWidth/8) + sniperBodySize; %center x value
          ySniperBody = (5*mapHeight/8) + sniperBodySize/2; %center y value

          %draw the sniper-nozzle and initialize graphics handles
          sniperNozzleSize = mapWidth/20;
          sniperNozzleGraphics = drawSniperNozzle(mapWidth, mapHeight);
          xSniperNozzle = mapWidth/2 + sniperNozzleSize;
          ySniperNozzle = 9*mapHeight/10 + sniperNozzleSize/2;

          %draw the sniper-tail and initialize graphics handles
          sniperTailSize = mapWidth/20;
          sniperTailGraphics = drawSniperTail(mapWidth, mapHeight);
          xSniperTail = mapWidth/10 + 2*sniperTailSize;
          ySniperTail = mapHeight/10 + 1.5*sniperTailSize;

          %draw the sniper-grip and initialize graphics handles
          sniperGripSize = mapWidth/20;
          sniperGripGraphics = drawSniperGrip(mapWidth, mapHeight);
          xSniperGrip = mapWidth/2 + sniperGripSize;
          ySniperGrip = mapHeight/2 + sniperGripSize/2;

          %Draw the CNC-Machine and initialize graphics handles
          CNCMachineSize = mapWidth/10;
          CNCMachineGraphics = drawCNCMachine (mapWidth, mapHeight);
          xCNCMachine = 7*mapWidth/8;
          yCNCMachine = 7*mapHeight/8;

          partsNowExist = true;
      endif

    if( cmd == "w" || cmd == "a" || cmd == "d" || cmd == "e");
      if (spearCounter == 0)
        % erase old captain
        for i=1:length( captainGraphics );
            set( captainGraphics(i), 'Visible', 'off' );
        endfor

        % move capt
        [xCapt, yCapt, thetaCapt, moveArm, dStep] = moveCapt(cmd, xCapt, yCapt, thetaCapt, sizeCapt, mapWidth, mapHeight);


        % draw new capt
        [captainGraphics, capt2, pt16, captHand, xSpearPoint, ySpearPoint] = drawCapt( xCapt, yCapt, thetaCapt, sizeCapt, moveArm, spearOff);
      endif


      %sees if capt hit crab when 'e' is pressed. spearOff is always false til sniper rifle is crafted
      if (cmd == "e" && spearOff == false)
          for (i=1: 3)
              xSpearPoint = capt2(1, i); %capt2 matrix consists of 3 invis nodes on his spear - middle, top, bottom
              ySpearPoint = capt2(2, i);

              for (a=1: length(crab2)) %crab2 matrix consists of 3 invis nodes - middle, top, bottom
                  x2 = crab2(1, a);
                  y2 = crab2(2, a);
                  distFromSpear = sqrt((xSpearPoint-x2)^2+ (ySpearPoint-y2)^2);

                  if (distFromSpear <= sizeCrab/2) %if crab is hit
                      crabStep = crabStepWhen_E_Is_Pressed;
                      hit = true
                      crabStunned = crabStunnedDuration;
                      E_is_Pressed = true;
                  endif
               endfor
          endfor
        pause(0.2);
        % erase old captain
        for i=1:length( captainGraphics );
            set( captainGraphics(i), 'Visible', 'off' );
        endfor

        % move capt
        [xCapt, yCapt, thetaCapt, moveArm, dStep] = moveCapt(cmd, xCapt, yCapt, thetaCapt, sizeCapt, mapWidth, mapHeight);

        moveArm = 'fals';
        % draw new capt
        [captainGraphics, capt2, pt16, captHand, xSpearPoint, ySpearPoint] = drawCapt( xCapt, yCapt, thetaCapt, sizeCapt, moveArm, spearOff);
      endif


      if (crabsCaught == numCrabs && partsAllCollected == false)
      %Sniper Body
          if (piece1 == false)
            xDist = abs(xCapt - xSniperBody)
            yDist = abs(yCapt - ySniperBody)
            if (xDist <= sniperBodySize + sizeCapt && yDist <= sniperBodySize/2 + sizeCapt) %if capt touches sniper body
              for (b=1:length(sniperBodyGraphics));
                set(sniperBodyGraphics(b), 'Visible','off');
              endfor
              piece1 = true; %program stops looking for sniper body
            endif
          endif

      %Sniper Grip
          if (piece2 == false)
            xDist = abs(xCapt - xSniperGrip);
            yDist = abs(yCapt - ySniperGrip);
            if (xDist <= 1.25*sniperGripSize + sizeCapt && yDist <= sniperGripSize/2 + sizeCapt)
              for (b=1:length(sniperGripGraphics));
                set(sniperGripGraphics(b), 'Visible','off');
              endfor
              piece2 = true;
            endif
          endif

      %Sniper Nozzle
          if (piece3 == false)
            xDist = abs(xCapt - xSniperNozzle);
            yDist = abs(yCapt - ySniperNozzle);
            if (xDist <= 2*sniperNozzleSize + sizeCapt && yDist <= 1.5*sniperNozzleSize + sizeCapt)
              for (b=1:length(sniperNozzleGraphics));
                set(sniperNozzleGraphics(b), 'Visible','off');
              endfor
              piece3 = true;
            endif
          endif

      %Sniper Scope
          if (piece4 == false)
            xDist = abs(xCapt - xSniperScope);
            yDist = abs(yCapt - ySniperScope);
            if (xDist <= 2.5*sniperScopeSize + sizeCapt && yDist <= 1.5*sniperScopeSize + sizeCapt)
              for (b=1:length(scopeGraphics));
                set(scopeGraphics(b), 'Visible','off');
              endfor
              piece4 = true;
            endif
          endif

      %Sniper Tail
          if (piece5 == false)
            xDist = abs(xCapt - xSniperTail);
            yDist = abs(yCapt - ySniperTail);
            if (xDist <= 2*sniperTailSize + sizeCapt && yDist <= 1.5*sniperTailSize + sizeCapt)
              for (b=1:length(sniperTailGraphics));
                set(sniperTailGraphics(b), 'Visible','off');
              endfor
              piece5 = true;
            endif
          endif

          if (piece1 == true && piece2 == true && piece3 == true && piece4 == true && piece5 == true)
            partsAllCollected = true;
          endif
      endif

      if (partsAllCollected == true && hasBeenCrafted == 0) %if all sniper pieces are found
            get_to_the_CNC_Machine = true;
            xDist = abs(xCapt - xCNCMachine);
            yDist = abs(yCapt - yCNCMachine);
            if (xDist <= CNCMachineSize/2 + sizeCapt && yDist <= CNCMachineSize/4 + sizeCapt) %if capt touches CNC Machine
              sniperRifleCraft = true;
              hasBeenCrafted = 1; %program stops looking for CNC Machine
            endif
       endif


      if (sniperRifleCraft == true) %if sniper rifle is crafted
              spearOff = true;
              spearCounter = 1;

        % erase old captain
        for i=1:length( captainGraphics );
            set( captainGraphics(i), 'Visible', 'off' );
        endfor

        % move capt
        [xCapt, yCapt, thetaCapt, moveArm, dStep] = moveCapt(cmd, xCapt, yCapt, thetaCapt, sizeCapt, mapWidth, mapHeight);


        % draw new capt
        [captainGraphics, capt2, pt16, captHand, xSpearPoint, ySpearPoint] = drawCapt( xCapt, yCapt, thetaCapt, sizeCapt, moveArm, spearOff); %removes capt spear

              if (setCounter == 1); %prevents an undefined sniperRifleGraphics from being erased. sniperRifleGraphics is undefined initially bc drawSniperRifle hasn't passed yet.
                for (i=1: length(sniperRifleGraphics)) %erases old sniper rifle
                  set (sniperRifleGraphics(i), 'Visible', 'off');
                endfor
              endif
              %captHand is captain's hand coords if capt was locted at origin with 0 degree rotation.
              %captHand was extracted from drawCapt earlier on
              xCaptHand = captHand(1, 1);  %extracts x coord of captain's hand
              yCaptHand = captHand(2, 1);  %extracts y coord of captain's hand
              [xCaptPoint2, yCaptPoint2] = captTracking(xCapt, yCapt, thetaCapt, xCaptHand, yCaptHand); %rotates captain's hand appropriately at origin, stores new hand coords inside xCaptPoint2 & yCaptPoint2. Does NOT translate though, it only rotates.
              [sniperRifleGraphics, invisibleNode, invisibleNodeNozzle] = drawSniperRifle (sizeCapt/2, thetaCapt + pi/2, xCaptPoint2, yCaptPoint2, 0, 0, false); %false as parameter gathers 2 invis sniper nodes that's all

              %invisible node for lower right of sniper grip. This is where capt's hand will be located when holding the sniper rifle.
              %invisNode is properly rotated and translated through drawSniperRifle
              xInvisNode = invisibleNode(1, 1); %x-coord for this node
              yInvisNode = invisibleNode(2, 1); %y-coord for this node
              xArmDistFromNode = xCaptPoint2-xInvisNode;
              yArmDistFromNode = yCaptPoint2-yInvisNode;
              set(captainGraphics(12), 'Visible','off'); %turns spear invisible
              [sniperRifleGraphics, invisibleNode, invisibleNodeNozzle] = drawSniperRifle (sizeCapt/2, thetaCapt + pi/2, xCaptPoint2, yCaptPoint2, xArmDistFromNode, yArmDistFromNode, true); %true being a parameter draws sniper rifle properly rotated and translated
              setCounter = 1; %allows old sniper to be erased starting next tick since drawSniperRifle has passed. sniperRifleGraphics is now defined.
              if (cmd == 'e' && reload == reloadDefault) %if reload is complete and 'e' is pressed
                bulletStep = 50; %dist bullet will travel each tick

                %invisibleNodeNozzle is initially located at the nozzle tip. The bullet will be drawn around this invisible node
                xNozzle = invisibleNodeNozzle(1, 1); %x-coord of invisibleNodeNozzle
                yNozzle = invisibleNodeNozzle(2, 1); %y-coord of invisibleNodeNozzle
                [bulletGraphics, invisibleNodeNozzle] = drawBullet (sizeCapt/2, thetaCapt + pi/2, xNozzle, yNozzle); %draws bullet on first tick
                gunTrigger = 1; %so next 'if loop' can activate
                bulletInBounds = 1; %so next 'if loop' can activate
                reload = reloadDefault; %reload is set to the reloading duration
                reloadYes = 1; %indicates the reload process has begun
              endif
       endif
   endif

   if (gunTrigger == 1 && bulletInBounds == 1) %previous 'if loop' initiates this

       %erase old bullet
       for i=1:length( bulletGraphics );
           set( bulletGraphics(i), 'Visible', 'off' );
       endfor

       %bullet is set to proper angle
       xNozzle = xNozzle + bulletStep*cos(thetaCapt - pi/2); %x-coord of rotated invisibleNodeNozzle
       yNozzle = yNozzle + bulletStep*sin(thetaCapt - pi/2); %y-coord of rotated invisibleNodeNozzle

       %draw new bullet
       [bulletGraphics, invisibleNodeNozzle] = drawBullet (sizeCapt/2, thetaCapt + pi/2, xNozzle, yNozzle);

       disFromNode = sqrt((xNozzle - xCrab)^2 + (yNozzle - yCrab)^2); %gets bullet's distance from crab

       if (disFromNode <= sizeCrab) %if bullet hits crab
           you_win = true %returns in console that you win
           break;
       endif

       %if bullet hits map border, it dissapears and stops moving
       if ((mapWidth < xNozzle || 0 > xNozzle) || (mapHeight < yNozzle || 0 > yNozzle) )
         for i=1:length( bulletGraphics ); %turns bullet invisible
           set( bulletGraphics(i), 'Visible', 'off' );
         endfor
         bulletInBounds = 0; %stops bullet movement
       endif
   endif

   if (reloadYes == 1) %if sniper is still reloading
     reload = reload - 1      %tells the console the reload time
     if (reload == 0) %if reload duration = 0
       reload = reloadDefault; %sets reload to reload duration
       reloadYes = 0; %ends this entire 'nested if loop'
     endif
   endif

    %Small Crab Stuff
    if (crabsCaught != numCrabs)
          %makes crab run when near a net
          for j=1:numCrabs
            if (!isCrabCaught(j) && getDist(xSpearPoint,ySpearPoint,xSmallCrab(j),ySmallCrab(j)) < 7*sizeCapt) %make Crabs Run

            %erase the old crab
              for i=1:length(smallCrabGraphics(:,j))
                delete(smallCrabGraphics(i,j));
              endfor
            % get the crab's new angle (pointing towards the net)
            thetaSmallCrab(j) = getAngle(xSpearPoint, ySpearPoint, xSmallCrab(j), ySmallCrab(j));

            %moves the crab backwards
            cmd = "k";
            [xSmallCrab(j),ySmallCrab(j),thetaSmallCrab(j)] = moveSmallCrab(cmd,xSmallCrab(j),ySmallCrab(j),thetaSmallCrab(j),mapHeight,mapWidth,sizeSmallCrab);
            %draws new crab
            smallCrabGraphics(:,j) = drawSmallCrab(xSmallCrab(j),ySmallCrab(j),thetaSmallCrab(j),sizeSmallCrab);
            endif
          endfor


            %dissapears the crab when caught
         for j=1:numCrabs
           if(!isCrabCaught(j) && getDist(xSpearPoint, ySpearPoint, xSmallCrab(j), ySmallCrab(j)) < 2*sizeCapt)
           % keeps track of the number of crabs caught

            crabsCaught = crabsCaught + 1;

            isCrabCaught(j)=1;
            crabsCaught = sum(isCrabCaught);
             % erase the old crab
              for i=1:length(smallCrabGraphics(:,j))
                delete(smallCrabGraphics(i,j));
              endfor

            endif
          endfor
    endif

    if (cmd == "Q" || you_win == true) %if quit, if all lives lost, or if you win
      if (cmd == "Q")
        combatLog = 1;
      endif
      break;
    endif
    fflush(stdout);
    pause(.01);
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
##    if(xCrab != xCapt && yCrab != yCapt)
##    %erase old crab
##   for (i=1:length(crabGraphics))
##                set(crabGraphics(i), 'Visible','off');
##   endfor
##
##   %move crab
##   [xCrab, yCrab, thetaCrab] = crabTracking (xCapt, yCapt, xCrab, yCrab);
##
##   %draw new crab
##   crabGraphics = drawCrabs (xCrab , yCrab , thetaCrab , sizeCrab);
##   endif
##
##
##fflush(stdout);
##pause(.01);
endwhile

%death screen

restart = drawEndScreen("START-SCREEN.png", numCrabs, crabsCaught);

endwhile

%cmd = "null";

##if (cmd != "Q" && you_win == false && combatLog == 0); %activates if Q wasn't pressed while Capt was alive
##  [mapHeight , mapWidth] = drawMap( "you_died.jpg" );
##
##  Press_Any_Key_To_Continue = true %shows in Command Window
##  or_Type_Q_to_Quit = true %shows in Command Window
##
##  cmd = "null";
##  while (cmd == "null"); %while loop keeps Captain on death screen until input is made
##    cmd = kbhit();
##    if (cmd != "Q"); %if any key is pressed, plays game again
##      crabs();
##    endif;
##  endwhile;
##
##elseif (cmd != "Q" && you_win == true);
##  [mapHeight , mapWidth] = drawMap( "you_win_gg.jpg" );
##
##  Press_Any_Key_To_Continue = true %shows in Command Window
##  or_Type_Q_to_Quit = true %shows in Command Window
##
##  cmd = "null";
##  while (cmd == "null"); %while loop keeps Captain on death screen until input is made
##    cmd = kbhit();
##    if (cmd != "Q"); %if any key is pressed, plays game again
##      crabs();
##    endif;
##  endwhile;
##endif
##
##quit_Game = true %indicates in Command Window when game has been quit
clear
close all

endfunction

