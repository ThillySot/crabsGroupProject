<<<<<<< HEAD
function [xCapt, yCapt, thetaCapt, moveArm, dStep] = moveCapt(cmd, x, y, theta, size, width, height);
=======
function [xCapt, yCapt, thetaCapt, moveArm] = moveCapt(cmd, x, y, theta, size, width, height);
>>>>>>> a5c2b72f77e7a15589884356103c12dd1e9fca56

dTheta=pi/6;
dStep=150;
moveArm = 'fals';


if( cmd == "w" ); %move forward
xCapt = x + dStep*cos(theta);
yCapt = y + dStep*sin(theta);
thetaCapt = theta;
moveArm = 'fals';

<<<<<<< HEAD
     if (IsOnMap(xCapt, yCapt, width, height, size) );
=======
     if (IsOnMap(xCapt, yCapt, width, height, size) )
>>>>>>> a5c2b72f77e7a15589884356103c12dd1e9fca56
       xCapt = xCapt;
       yCapt = yCapt;
     else
       xCapt = x;
       yCapt = y;
     endif


elseif ( cmd == "d" ); %turn right
xCapt = x;
yCapt = y;
thetaCapt = theta+dTheta;
moveArm = 'fals';

elseif ( cmd == "a" ); %turn left
xCapt = x;
yCapt = y;
thetaCapt = theta-dTheta ;
moveArm = 'fals';

elseif (cmd == "e" ); %stab spear
moveArm = "true";
xCapt= x;
yCapt = y;
thetaCapt = theta;

else % if none of the cases are true, set the new variables equal to the old inputs.
xCapt = x;
yCapt = y;
thetaCapt = theta;

endif

endfunction

