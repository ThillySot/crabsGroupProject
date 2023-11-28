function scope = getSniperScope (width, height);
  %this function stores and returns the scope at the origin.
  %each of the lines below are individual points of the scope.

sniperScopeSize = width/20;
LocationOnMapX = 3*width/4;
LocationOnMapY = height/4;

scopePt1 = [LocationOnMapX; LocationOnMapY; 1];
scopePt2 = [LocationOnMapX + sniperScopeSize; LocationOnMapY; 1];
scopePt3 = [LocationOnMapX + 2*sniperScopeSize; LocationOnMapY + sniperScopeSize; 1];
scopePt4 = [LocationOnMapX + 4*sniperScopeSize; LocationOnMapY + sniperScopeSize; 1];
scopePt5 = [LocationOnMapX + 4.5*sniperScopeSize; LocationOnMapY + 0.5*sniperScopeSize; 1];
scopePt6 = [LocationOnMapX + 5*sniperScopeSize; LocationOnMapY + 0.5*sniperScopeSize; 1];

scopePt7 = [LocationOnMapX + 5*sniperScopeSize; LocationOnMapY + 2.5*sniperScopeSize; 1];
scopePt8 = [LocationOnMapX + 4.5*sniperScopeSize; LocationOnMapY + 2.5*sniperScopeSize; 1];
scopePt9 = [LocationOnMapX + 4*sniperScopeSize; LocationOnMapY + 2*sniperScopeSize; 1];
scopePt10 = [LocationOnMapX + 2*sniperScopeSize; LocationOnMapY + 2*sniperScopeSize; 1];
scopePt11 = [LocationOnMapX + sniperScopeSize; LocationOnMapY + 3*sniperScopeSize; 1];
scopePt12 = [LocationOnMapX; LocationOnMapY + 3*sniperScopeSize; 1];

scope = [scopePt1, scopePt2, scopePt3, scopePt4, scopePt5, scopePt6, scopePt7, scopePt8, scopePt9, scopePt10, scopePt11, scopePt12];
endfunction
