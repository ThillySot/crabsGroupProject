
function [xCrab, yCrab, thetaCrab] = crabTracking (xCapt, yCapt, xCrab, yCrab)

crabStep = 10;

 if(xCrab != xCapt && yCrab != yCapt)
    thetaCrab = atan((yCapt-yCrab)/(xCapt-xCrab));
    xCrab = xCrab + crabStep * cos(thetaCrab);
    yCrab = yCrab + crabStep * sin(thetaCrab);
endif

endfunction
