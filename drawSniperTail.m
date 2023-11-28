function sniperTailGraphics = drawSniperTail (width, height);

sniperTail = getSniperTail(width, height);

% Extract the sniper-scope points
pt1=sniperTail( : , 1);
pt2=sniperTail( : , 2);
pt3=sniperTail( : , 3);
pt4=sniperTail( : , 4);
pt5=sniperTail( : , 5);
pt6=sniperTail( : , 6);
pt7=sniperTail( : , 7);
pt8=sniperTail( : , 8);

sniperTailGraphics(1) = drawLine(pt1 , pt2 , "b");
sniperTailGraphics(2) = drawLine(pt2 , pt3 , "b");
sniperTailGraphics(3) = drawLine(pt3 , pt4 , "b");
sniperTailGraphics(4) = drawLine(pt4 , pt5 , "b");
sniperTailGraphics(5) = drawLine(pt5 , pt6 , "b");
sniperTailGraphics(6) = drawLine(pt6 , pt7 , "b");
sniperTailGraphics(7) = drawLine(pt7 , pt8 , "b");
sniperTailGraphics(8) = drawLine(pt8 , pt1 , "b");

endfunction
