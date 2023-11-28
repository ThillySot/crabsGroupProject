function sniperTail = getSniperTail (width, height);
  %this function stores and returns the scope at the origin.
  %each of the lines below are individual points of the scope.
sniperTailSize = width/20;
LocationOnMapX = width/10;
LocationOnMapY = height/10;

sniperTailPt1 = [LocationOnMapX; LocationOnMapY + sniperTailSize; 1];
sniperTailPt2 = [LocationOnMapX + 2*sniperTailSize; LocationOnMapY + sniperTailSize; 1];
sniperTailPt3 = [LocationOnMapX + 3*sniperTailSize; LocationOnMapY; 1];
sniperTailPt4 = [LocationOnMapX + 4*sniperTailSize; LocationOnMapY; 1];
sniperTailPt5 = [LocationOnMapX + 4*sniperTailSize; LocationOnMapY + 3*sniperTailSize; 1];
sniperTailPt6 = [LocationOnMapX + 3*sniperTailSize; LocationOnMapY + 3*sniperTailSize; 1];
sniperTailPt7 = [LocationOnMapX + 2*sniperTailSize; LocationOnMapY + 2*sniperTailSize; 1];
sniperTailPt8 = [LocationOnMapX; LocationOnMapY + 2*sniperTailSize; 1];

sniperTail = [sniperTailPt1, sniperTailPt2, sniperTailPt3, sniperTailPt4, sniperTailPt5, sniperTailPt6, sniperTailPt7, sniperTailPt8];
endfunction
