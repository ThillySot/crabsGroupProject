function sniperNozzleGraphics = drawSniperNozzle (width, height);

sniperNozzle = getSniperNozzle(width, height);

% Extract the sniper-scope points
pt1=sniperNozzle( : , 1);
pt2=sniperNozzle( : , 2);
pt3=sniperNozzle( : , 3);
pt4=sniperNozzle( : , 4);
pt5=sniperNozzle( : , 5);
pt6=sniperNozzle( : , 6);
pt7=sniperNozzle( : , 7);
pt8=sniperNozzle( : , 8);

sniperNozzleGraphics(1) = drawLine(pt1 , pt2 , "b");
sniperNozzleGraphics(2) = drawLine(pt2 , pt3 , "b");
sniperNozzleGraphics(3) = drawLine(pt3 , pt4 , "b");
sniperNozzleGraphics(4) = drawLine(pt4 , pt5 , "b");
sniperNozzleGraphics(5) = drawLine(pt5 , pt6 , "b");
sniperNozzleGraphics(6) = drawLine(pt6 , pt7 , "b");
sniperNozzleGraphics(7) = drawLine(pt7 , pt8 , "b");
sniperNozzleGraphics(8) = drawLine(pt8 , pt1 , "b");
endfunction
