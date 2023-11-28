<<<<<<< HEAD
<<<<<<< HEAD
function [xCrab, yCrab, thetaCrab, crabStep] = crabTracking(xCapt, yCapt, xCrab, yCrab, crabStep, distFromCrab, thetaCapt);
  tempTheta = thetaCapt;
  if (distFromCrab > crabStep)
     if ((xCapt - xCrab) >= 0); %if Captain is to the right of the crab or at the same x position
       thetaCrab = atan((yCapt-yCrab) / (xCapt - xCrab));
       xCrab = xCrab + crabStep*cos(thetaCrab);
       yCrab = yCrab + crabStep*sin(thetaCrab);

     elseif ((xCapt - xCrab) < 0); %if Captain is to the left of the crab
       thetaCrab = atan((yCapt - yCrab) / (xCapt-xCrab)) + pi;
       xCrab = xCrab + crabStep*cos(thetaCrab);
       yCrab = yCrab + crabStep*sin(thetaCrab);
     endif

   elseif (distFromCrab <= crabStep)
       hello = true
       xCrab = xCapt;
       yCrab = yCapt;
       thetaCrab = tempTheta;
   endif




endfunction
=======
=======
>>>>>>> a5c2b72f77e7a15589884356103c12dd1e9fca56
function [xCrabNew, yCrabNew, thetaCrab] = crabTracking(xCapt, yCapt, xCrab, yCrab)
    crabStep = 20;

    thetaCrab = atan2(yCapt - yCrab, xCapt - xCrab);
    xCrabNew = xCrab + crabStep * cos(thetaCrab);
    yCrabNew = yCrab + crabStep * sin(thetaCrab);
end
<<<<<<< HEAD
>>>>>>> a5c2b72f77e7a15589884356103c12dd1e9fca56
=======
>>>>>>> a5c2b72f77e7a15589884356103c12dd1e9fca56
