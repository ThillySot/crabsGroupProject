function sniperBody = getSniperBody (width, height);
  %this function stores and returns the scope at the origin.
  %each of the lines below are individual points of the scope.
sniperBodySize = width/20;
LocationOnMapX = 5*width/8;
LocationOnMapY = 5*height/8;

sniperBodyPt1 = [LocationOnMapX; LocationOnMapY; 1];
sniperBodyPt2 = [LocationOnMapX + 2*sniperBodySize; LocationOnMapY; 1];
sniperBodyPt3 = [LocationOnMapX + 2*sniperBodySize; LocationOnMapY + sniperBodySize; 1];
sniperBodyPt4 = [LocationOnMapX; LocationOnMapY + sniperBodySize; 1];



sniperBody = [sniperBodyPt1, sniperBodyPt2, sniperBodyPt3, sniperBodyPt4];
endfunction;
