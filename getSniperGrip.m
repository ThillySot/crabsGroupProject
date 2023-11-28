function sniperGrip = getSniperGrip (width, height);
  %this function stores and returns the scope at the origin.
  %each of the lines below are individual points of the scope.
sniperGripSize = width/20;
LocationOnMapX = width/2;
LocationOnMapY = height/2;

sniperGripPt1 = [LocationOnMapX; LocationOnMapY; 1];
sniperGripPt2 = [LocationOnMapX + sniperGripSize; LocationOnMapY; 1];
sniperGripPt3 = [LocationOnMapX + 2*sniperGripSize; LocationOnMapY; 1];
sniperGripPt4 = [LocationOnMapX + 2.5*sniperGripSize; LocationOnMapY + sniperGripSize; 1];
sniperGripPt5 = [LocationOnMapX + 1.5*sniperGripSize; LocationOnMapY + sniperGripSize; 1];
sniperGripPt6 = [LocationOnMapX + 1.25*sniperGripSize; LocationOnMapY + sniperGripSize/3; 1];

sniperGrip = [sniperGripPt1, sniperGripPt2, sniperGripPt3, sniperGripPt4, sniperGripPt5, sniperGripPt6];
endfunction;
