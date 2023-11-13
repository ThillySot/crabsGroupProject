function [xCrabNew, yCrabNew, thetaCrab] = crabTracking(xCapt, yCapt, xCrab, yCrab)
    crabStep = 20;

    thetaCrab = atan2(yCapt - yCrab, xCapt - xCrab);
    xCrabNew = xCrab + crabStep * cos(thetaCrab);
    yCrabNew = yCrab + crabStep * sin(thetaCrab);
end
