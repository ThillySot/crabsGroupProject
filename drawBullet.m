function [bulletGraphics, invisibleNodeBullet] = drawBullet (size, thetaCapt, xNode, yNode);

bullet = getBullet(size);
% rotate captain
R = getRotation(thetaCapt);
bullet = R*bullet;

% shift captain to new location
##T = getTranslation(xNode,yNode);
##bullet = T*bulletRotated;

for (i = 1: 5)
  bullet(1, i) = bullet(1, i) + xNode;
  bullet(2, i) = bullet(2, i) + yNode;
endfor

% Extract the sniper-scope points
pt1=bullet( : , 1);
pt2=bullet( : , 2);
pt3=bullet( : , 3);
pt4=bullet( : , 4);
invisibleNodeBullet = bullet( : , 5);

bulletGraphics(1) = drawLine(pt1 , pt2 , "b");
bulletGraphics(2) = drawLine(pt2 , pt3 , "b");
bulletGraphics(3) = drawLine(pt3 , pt4 , "k");
bulletGraphics(4) = drawLine(pt4 , pt1 , "b");

endfunction
