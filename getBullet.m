function bullet = getBullet (size);
  %this function stores and returns the bullet at the origin.
  %each of the lines below are individual points of the bullet.

size = size*3;
sizeY = size/2;
##sniperBodySize = width/20;
bulletPt1 = [size/4; -sizeY/4; 1];
bulletPt2 = [size/4; sizeY/4; 1];
bulletPt3 = [-size/4; sizeY/4; 1];
bulletPt4 = [-size/4; -sizeY/4; 1];
invisibleNodeBullet = [0; 0; 1];






bullet = [bulletPt1, bulletPt2, bulletPt3, bulletPt4, invisibleNodeBullet];
endfunction;
