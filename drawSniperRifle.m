function [sniperRifleGraphics, invisibleNode, invisibleNodeNozzle] = drawSniperRifle (size, thetaCapt, xCapt, yCapt, xNode, yNode, bool);
tempBool = bool;
sniperRifle = getSniperRifle(size);
% rotate captain
R = getRotation(thetaCapt);
sniperRotated = R*sniperRifle;

% shift captain to new location
T = getTranslation(xCapt,yCapt);
sniperRifle = T*sniperRotated;

if (tempBool == true)
for (i = 1: 41)
  sniperRifle(1, i) = sniperRifle(1, i) + xNode;
  sniperRifle(2, i) = sniperRifle(2, i) + yNode;
endfor

sniperRifle(1, 43) = sniperRifle(1, 43) + xNode;
sniperRifle(2, 43) = sniperRifle(2, 43) + yNode;

% Extract the sniper-scope points
pt1=sniperRifle( : , 1);
pt2=sniperRifle( : , 2);
pt3=sniperRifle( : , 3);
pt4=sniperRifle( : , 4);

pt5=sniperRifle( : , 5);
pt6=sniperRifle( : , 6);
pt7=sniperRifle( : , 7);
pt8=sniperRifle( : , 8);
pt9=sniperRifle( : , 9);
pt10=sniperRifle( : , 10);

pt11=sniperRifle( : , 11);
pt12=sniperRifle( : , 12);
pt13=sniperRifle( : , 13);
pt14=sniperRifle( : , 14);
pt15=sniperRifle( : , 15);
pt16=sniperRifle( : , 16);
pt17=sniperRifle( : , 17);
pt18=sniperRifle( : , 18);

pt19=sniperRifle( : , 19);
pt20=sniperRifle( : , 20);
pt21=sniperRifle( : , 21);
pt22=sniperRifle( : , 22);
pt23=sniperRifle( : , 23);
pt24=sniperRifle( : , 24);
pt25=sniperRifle( : , 25);
pt26=sniperRifle( : , 26);

pt27=sniperRifle( : , 27);
pt28=sniperRifle( : , 28);
pt29=sniperRifle( : , 29);
pt30=sniperRifle( : , 30);
pt31=sniperRifle( : , 31);
pt32=sniperRifle( : , 32);
pt33=sniperRifle( : , 33);
pt34=sniperRifle( : , 34);
pt35=sniperRifle( : , 35);
pt36=sniperRifle( : , 36);
pt37=sniperRifle( : , 37);
pt38=sniperRifle( : , 38);
pt39=sniperRifle( : , 39);
pt40=sniperRifle( : , 40);
pt41=sniperRifle( : , 41);

endif
invisibleNode=sniperRifle( : , 42);
invisibleNodeNozzle = sniperRifle( : , 43);

if (tempBool == true)
%body
sniperRifleGraphics(1) = drawLine(pt1 , pt2 , "b");
sniperRifleGraphics(2) = drawLine(pt2 , pt3 , "b");
sniperRifleGraphics(3) = drawLine(pt3 , pt4 , "b");
sniperRifleGraphics(4) = drawLine(pt4 , pt1 , "b");

%grip
sniperRifleGraphics(5) = drawLine(pt5 , pt7 , "b");
sniperRifleGraphics(6) = drawLine(pt7 , pt8 , "b");
sniperRifleGraphics(7) = drawLine(pt8 , pt9 , "b");
sniperRifleGraphics(8) = drawLine(pt9 , pt10 , "b");
sniperRifleGraphics(9) = drawLine(pt10 , pt6 , "b");
sniperRifleGraphics(10) = drawLine(pt10 , pt5 , "b");


%nozzle
sniperRifleGraphics(11) = drawLine(pt11 , pt12 , "b");
sniperRifleGraphics(12) = drawLine(pt12 , pt13 , "b");
sniperRifleGraphics(13) = drawLine(pt13 , pt14 , "b");
sniperRifleGraphics(14) = drawLine(pt14 , pt15 , "b");
sniperRifleGraphics(15) = drawLine(pt15 , pt16 , "b");
sniperRifleGraphics(16) = drawLine(pt16 , pt17 , "b");
sniperRifleGraphics(17) = drawLine(pt17 , pt18 , "b");

%tail
sniperRifleGraphics(18) = drawLine(pt19 , pt20 , "b");
sniperRifleGraphics(19) = drawLine(pt20 , pt21 , "b");
sniperRifleGraphics(20) = drawLine(pt21 , pt22 , "b");
sniperRifleGraphics(21) = drawLine(pt22 , pt23 , "b");
sniperRifleGraphics(22) = drawLine(pt23 , pt24 , "b");
sniperRifleGraphics(23) = drawLine(pt24 , pt25 , "b");
sniperRifleGraphics(24) = drawLine(pt25 , pt26 , "b");

%scope
sniperRifleGraphics(25) = drawLine(pt27 , pt28 , "b");
sniperRifleGraphics(26) = drawLine(pt28 , pt29 , "b");
sniperRifleGraphics(27) = drawLine(pt29 , pt30 , "b");
sniperRifleGraphics(28) = drawLine(pt30 , pt31 , "b");
sniperRifleGraphics(29) = drawLine(pt31 , pt32 , "b");
sniperRifleGraphics(30) = drawLine(pt32 , pt33 , "b");
sniperRifleGraphics(31) = drawLine(pt33 , pt34 , "b");
sniperRifleGraphics(32) = drawLine(pt34 , pt35 , "b");
sniperRifleGraphics(33) = drawLine(pt35 , pt39 , "b");
sniperRifleGraphics(34) = drawLine(pt35 , pt36 , "b");
sniperRifleGraphics(35) = drawLine(pt37 , pt38 , "b");
sniperRifleGraphics(36) = drawLine(pt39 , pt40 , "b");
sniperRifleGraphics(37) = drawLine(pt40 , pt41 , "b");
sniperRifleGraphics(38) = drawLine(pt41 , pt27 , "b");

else
sniperRifleGraphics = 0;
endif
endfunction
