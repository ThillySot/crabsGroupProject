
function [xCrab, yCrab, thetaCrab] = crabTracking (xCapt, yCapt, xCrab, yCrab);

crabStep = 30;

 if(xCrab != xCapt && yCrab != yCapt && xCrab < xCapt)
    thetaCrab = atan((yCapt-yCrab)/(xCapt-xCrab));
    xCrab = xCrab + crabStep * cos(thetaCrab);
    yCrab = yCrab + crabStep * sin(thetaCrab);

  else
    thetaCrab = atan((yCapt-yCrab)/(xCapt-xCrab)) + pi;
    xCrab = xCrab + crabStep * cos(thetaCrab);
    yCrab = yCrab + crabStep * sin(thetaCrab);
endif

endfunction
