function [xCaptPoint, yCaptPoint] = captTracking(xCapt, yCapt, thetaCapt, xDistance, yDistance);
  %This function sets the captain's head as the crabs's target
  xCaptPoint = xDistance*cos(thetaCapt) + xCapt - yDistance*sin(thetaCapt);%right top of head
  yCaptPoint = xDistance*sin(thetaCapt) + yCapt + yDistance*cos(thetaCapt);



endfunction
