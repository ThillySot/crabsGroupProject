function h = drawSmallCrab (xCrab,yCrab,thetaCrab,sizeCrab)

 % This function draws the crab by rotating and shifting the crab
 % as it appears in getCrab.m where it is at the origin with zero heading.

  %get crab at the origin
  smallCrab = getSmallCrab(sizeCrab);

  %rotate crab
  R = getRotation(thetaCrab);
  smallCrabRotated = R*smallCrab;


  %shift crab to new location
  S = getTranslation(xCrab,yCrab);
  smallCrab = S*smallCrabRotated;

  %get crab points
  pt1=smallCrab(:,1);
  pt2=smallCrab(:,2);
  pt3=smallCrab(:,3);
  pt4=smallCrab(:,4);
  pt5=smallCrab(:,5);
  pt6=smallCrab(:,6);
  pt7=smallCrab(:,7);
  pt8=smallCrab(:,8);
  pt9=smallCrab(:,9);
  pt10=smallCrab(:,10);

  %draw the crab body
  h(1) = drawLine(pt1,pt2,"r");
  h(2) = drawLine(pt2,pt3,"r");

  h(3) = drawLine(pt3,pt4,"r");
  h(4) = drawLine(pt4,pt1,"r");

  %draw crab pinchers
  h(5) = drawLine(pt1,pt5,"r");
  h(6) = drawLine(pt4,pt6,"r");

  % draw legs
  h(7) = drawLine(pt2,pt7,"r");
  h(8) = drawLine(pt7,pt8,"r");

  h(9) = drawLine(pt3,pt9,"r");
  h(10) = drawLine(pt9,pt10,"r");


endfunction
