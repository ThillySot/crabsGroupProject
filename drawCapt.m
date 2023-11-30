function [captainGraphics, capt2, pt16, captHand, xSpearPoint, ySpearPoint] = drawCapt (xCapt , yCapt , thetaCapt , sizeCapt, moveArm, bool);

bool = bool;

capt = getCapt(sizeCapt, moveArm, bool);
captHand = capt( : , 12);

% rotate captain
R = getRotation(thetaCapt);
captRotated = R*capt;

% shift captain to new location
T = getTranslation(xCapt,yCapt);
capt = T*captRotated;

% Extract the captain points from the captain matrix capt.
pt1=capt( : , 1);
pt2=capt( : , 2);
pt3=capt( : , 3);
pt4=capt( : , 4);
pt5=capt( : , 5);
pt6=capt( : , 6);
pt7=capt( : , 7);
pt8=capt( : , 8);
pt9=capt( : , 9);
pt10=capt( : , 10);
pt11=capt( : , 11);
pt12=capt( : , 12);
pt13=capt( : , 13);
pt14=capt( : , 14);
pt15=capt( : , 19);
pt16 = capt( : , 20);

capt2 = [pt13, pt15, pt14];

xSpearPoint = pt13(1);
ySpearPoint = pt13(2);
% Draw the captain and set the return vector of graphics handles.
captainGraphics(1) = drawLine(pt1 , pt2 , "k");
captainGraphics(2) = drawLine(pt2 , pt3 , "k");
captainGraphics(3) = drawLine(pt2 , pt5 , "k");
captainGraphics(4) = drawLine(pt4 , pt5 , "k");
captainGraphics(5) = drawLine(pt5 , pt6 , "k");
captainGraphics(6) = drawLine(pt6 , pt1 , "k");
captainGraphics(7) = drawLine(pt7 , pt8 , "k");
captainGraphics(8) = drawLine(pt8 , pt9 , "k");
captainGraphics(9) = drawLine(pt9 , pt10 , "k");
captainGraphics(10) = drawLine(pt1 , pt11 , "k");
captainGraphics(11) = drawLine(pt6 , pt12 , "k");
captainGraphics(12) = drawLine(pt13 , pt14 , "k");
endfunction
