function sniperNozzle = getSniperNozzle (width, height);
  %this function stores and returns the scope at the origin.
  %each of the lines below are individual points of the scope.
sniperNozzleSize = width/20;
LocationOnMapX = width/2;
LocationOnMapY = 9*height/10;

sniperNozzlePt1 = [LocationOnMapX; LocationOnMapY; 1];
sniperNozzlePt2 = [LocationOnMapX + sniperNozzleSize; LocationOnMapY; 1];
sniperNozzlePt3 = [LocationOnMapX + sniperNozzleSize; LocationOnMapY + sniperNozzleSize/4; 1];
sniperNozzlePt4 = [LocationOnMapX + 4*sniperNozzleSize; LocationOnMapY + sniperNozzleSize/4; 1];
sniperNozzlePt5 = [LocationOnMapX + 4*sniperNozzleSize; LocationOnMapY + 3*sniperNozzleSize/4; 1];
sniperNozzlePt6 = [LocationOnMapX + sniperNozzleSize; LocationOnMapY + 3*sniperNozzleSize/4; 1];
sniperNozzlePt7 = [LocationOnMapX + sniperNozzleSize; LocationOnMapY + sniperNozzleSize; 1];
sniperNozzlePt8 = [LocationOnMapX; LocationOnMapY + sniperNozzleSize; 1];


sniperNozzle = [sniperNozzlePt1, sniperNozzlePt2, sniperNozzlePt3, sniperNozzlePt4, sniperNozzlePt5, sniperNozzlePt6, sniperNozzlePt7, sniperNozzlePt8];
endfunction;
