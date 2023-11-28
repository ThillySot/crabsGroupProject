function sniperBodyGraphics = drawSniperBody (width, height);

sniperBody = getSniperBody(width, height);

% Extract the sniper-scope points
pt1=sniperBody( : , 1);
pt2=sniperBody( : , 2);
pt3=sniperBody( : , 3);
pt4=sniperBody( : , 4);

sniperBodyGraphics(1) = drawLine(pt1 , pt2 , "b");
sniperBodyGraphics(2) = drawLine(pt2 , pt3 , "b");
sniperBodyGraphics(3) = drawLine(pt3 , pt4 , "b");
sniperBodyGraphics(4) = drawLine(pt4 , pt1 , "b");

endfunction
