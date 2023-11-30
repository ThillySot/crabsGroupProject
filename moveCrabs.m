<<<<<<< HEAD
##function [xCrab, yCrab, thetaCrab] = moveCrabs(cmd,x,y,theta,size,height,width);
##
##  step = 150;
##  dTheta = -pi/6;
##
##
##%move left
##if(cmd == "j")
##     xTemp = x + step * sin(theta);
##     yTemp = y - step * cos(theta);
##     thetaCrab = theta;
##
##     if (IsOnMap(xTemp, yTemp, width, height, size) )
##       xCrab = xTemp;
##       yCrab = yTemp;
##     else
##       xCrab = x;
##       yCrab = y;
##     endif
##
##
##%move left
##   elseif (cmd == "l")
##     xTemp = x - step * sin(theta);
##     yTemp = y + step * cos(theta);
##     thetaCrab = theta;
##
##     if (IsOnMap(xTemp, yTemp, width, height, size) )
##       xCrab = xTemp;
##       yCrab = yTemp;
##     else
##       xCrab = x;
##       yCrab = y;
##     endif
##
##%move down
##   elseif (cmd == "k")
##     xTemp = x - step * cos(theta);
##     yTemp = y - step * sin(theta);
##     thetaCrab = theta;
##
##     if (IsOnMap(xTemp, yTemp, width, height, size) )
##       xCrab = xTemp;
##       yCrab = yTemp;
##     else
##       xCrab = x;
##       yCrab = y;
##     endif
##
##%rotate left
##   elseif (cmd == "i")
##     xCrab = x;
##     yCrab = y;
##     thetaCrab = theta-dTheta;
##
##%rotate right
##   elseif (cmd == ",")
##     xCrab = x;
##     yCrab = y;
##     thetaCrab = theta+dTheta;
##
##   else
##     xCrab=x;
##     yCrab=y;
##     thetaCrab = theta;
##
##   endif
##
##endfunction
=======
function [xCrab, yCrab, thetaCrab] = moveCrabs(cmd,x,y,theta,size,height,width);

  step = 150;
  dTheta = -pi/6;


%move left
if(cmd == "j")
     xTemp = x + step * sin(theta);
     yTemp = y - step * cos(theta);
     thetaCrab = theta;

     if (IsOnMap(xTemp, yTemp, width, height, size) )
       xCrab = xTemp
       yCrab = yTemp
     else
       xCrab = x;
       yCrab = y;
     endif


%move left
   elseif (cmd == "l")
     xTemp = x - step * sin(theta);
     yTemp = y + step * cos(theta);
     thetaCrab = theta;

     if (IsOnMap(xTemp, yTemp, width, height, size) )
       xCrab = xTemp
       yCrab = yTemp
     else
       xCrab = x;
       yCrab = y;
     endif

%move down
   elseif (cmd == "k")
     xTemp = x - step * cos(theta);
     yTemp = y - step * sin(theta);
     thetaCrab = theta;

     if (IsOnMap(xTemp, yTemp, width, height, size) )
       xCrab = xTemp;
       yCrab = yTemp;
     else
       xCrab = x;
       yCrab = y;
     endif

%rotate left
   elseif (cmd == "i")
     xCrab = x;
     yCrab = y;
     thetaCrab = theta-dTheta;

%rotate right
   elseif (cmd == ",")
     xCrab = x;
     yCrab = y;
     thetaCrab = theta+dTheta;

   else
     xCrab=x;
     yCrab=y;
     thetaCrab = theta;

   endif

endfunction
% >>>>>>> a5c2b72f77e7a15589884356103c12dd1e9fca56
