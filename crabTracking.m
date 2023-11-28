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
