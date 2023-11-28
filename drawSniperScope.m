function scopeGraphics = drawSniperScope (width, height);

scope = getSniperScope(width, height);

% Extract the sniper-scope points
pt1=scope( : , 1);
pt2=scope( : , 2);
pt3=scope( : , 3);
pt4=scope( : , 4);
pt5=scope( : , 5);
pt6=scope( : , 6);
pt7=scope( : , 7);
pt8=scope( : , 8);
pt9=scope( : , 9);
pt10=scope( : , 10);
pt11=scope( : , 11);
pt12=scope( : , 12);

scopeGraphics(1) = drawLine(pt1 , pt2 , "b");
scopeGraphics(2) = drawLine(pt2 , pt3 , "b");
scopeGraphics(3) = drawLine(pt3 , pt4 , "b");
scopeGraphics(4) = drawLine(pt4 , pt5 , "b");
scopeGraphics(5) = drawLine(pt5 , pt6 , "b");
scopeGraphics(6) = drawLine(pt6 , pt7 , "b");

scopeGraphics(7) = drawLine(pt7 , pt8 , "b");
scopeGraphics(8) = drawLine(pt8 , pt9 , "b");
scopeGraphics(9) = drawLine(pt9 , pt10 , "b");
scopeGraphics(10) = drawLine(pt10 , pt11 , "b");
scopeGraphics(11) = drawLine(pt11 , pt12 , "b");
scopeGraphics(12) = drawLine(pt12 , pt1 , "b");

endfunction
