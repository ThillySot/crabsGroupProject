function sniperGripGraphics = drawSniperGrip (width, height);

sniperGrip = getSniperGrip(width, height);

% Extract the sniper-scope points
pt1=sniperGrip( : , 1);
pt2=sniperGrip( : , 2);
pt3=sniperGrip( : , 3);
pt4=sniperGrip( : , 4);
pt5=sniperGrip( : , 5);
pt6=sniperGrip( : , 6);

sniperGripGraphics(1) = drawLine(pt1 , pt2 , "b");
sniperGripGraphics(2) = drawLine(pt2 , pt3 , "b");
sniperGripGraphics(3) = drawLine(pt3 , pt4 , "b");
sniperGripGraphics(4) = drawLine(pt4 , pt5 , "b");
sniperGripGraphics(5) = drawLine(pt5 , pt6 , "b");
sniperGripGraphics(6) = drawLine(pt6 , pt2 , "b");
sniperGripGraphics(7) = drawLine(pt6 , pt1 , "b");

endfunction
