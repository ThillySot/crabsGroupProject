function healthGraphics = drawHealthbar (width, height);

health = getHealthbar(width, height);

% Extract the health-bar points from the captain matrix capt.
pt1=health( : , 1);
pt2=health( : , 2);
pt3=health( : , 3);
pt4=health( : , 4);
pt5=health( : , 5);
pt6=health( : , 6);
pt7=health( : , 7);
pt8=health( : , 8);
pt9=health( : , 9);
pt10=health( : , 10);
pt11=health( : , 11);
pt12=health( : , 12);
pt13=health( : , 13);
pt14=health( : , 14);
pt15=health( : , 15);
pt16=health( : , 16);
pt17=health( : , 17);
pt18=health( : , 18);
% Draw the health-bar and set the return vector of graphics handles.
##healthGraphics(1) = drawLine(pt1 , pt2 , "k");
##healthGraphics(2) = drawLine(pt2 , pt3 , "k");
##healthGraphics(3) = drawLine(pt3 , pt4 , "k");
##healthGraphics(4) = drawLine(pt4 , pt1 , "k");
##
##healthGraphics(5) = drawLine(pt5 , pt6 , "k");
##healthGraphics(6) = drawLine(pt6 , pt7 , "k");
##healthGraphics(7) = drawLine(pt7 , pt8 , "k");
##healthGraphics(8) = drawLine(pt8 , pt5 , "k");
##
##healthGraphics(9) = drawLine(pt9 , pt10 , "k");
##healthGraphics(10) = drawLine(pt10 , pt11 , "k");
##healthGraphics(11) = drawLine(pt11 , pt12 , "k");
##healthGraphics(12) = drawLine(pt12 , pt9 , "k");
healthGraphics(1) = drawLine(pt1 , pt2 , "r");
healthGraphics(2) = drawLine(pt2 , pt3 , "r");
healthGraphics(3) = drawLine(pt3 , pt4 , "r");
healthGraphics(4) = drawLine(pt4 , pt5 , "r");
healthGraphics(5) = drawLine(pt5 , pt6 , "r");
healthGraphics(6) = drawLine(pt6 , pt1 , "r");

healthGraphics(7) = drawLine(pt7 , pt8 , "r");
healthGraphics(8) = drawLine(pt8 , pt9 , "r");
healthGraphics(9) = drawLine(pt9 , pt10 , "r");
healthGraphics(10) = drawLine(pt10 , pt11 , "r");
healthGraphics(11) = drawLine(pt11 , pt12 , "r");
healthGraphics(12) = drawLine(pt12 , pt7 , "r");

healthGraphics(13) = drawLine(pt13 , pt14 , "r");
healthGraphics(14) = drawLine(pt14 , pt15 , "r");
healthGraphics(15) = drawLine(pt15 , pt16 , "r");
healthGraphics(16) = drawLine(pt16 , pt17 , "r");
healthGraphics(17) = drawLine(pt17 , pt18 , "r");
healthGraphics(18) = drawLine(pt18 , pt13 , "r");
endfunction
