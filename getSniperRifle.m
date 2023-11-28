function sniperRifle = getSniperRifle (size);
  %this function stores and returns the scope at the origin.
  %each of the lines below are individual points of the scope.

size = size*3;
sizeY = size/2;
##sniperBodySize = width/20;
sniperRiflePt1 = [size; -sizeY; 1];
sniperRiflePt2 = [size; sizeY; 1];
sniperRiflePt3 = [-size; sizeY; 1];
sniperRiflePt4 = [-size; -sizeY; 1];
%body done


%sniperGrip
##  size = 0.8;
##sniperGripSize = size*width/20;
##+7/8
##-4/8
sniperRiflePt5 = [-size/8; sizeY; 1];
sniperRiflePt6 = [3*size/8; sizeY; 1];
sniperRiflePt7 = [7*size/8; sizeY; 1];
sniperRiflePt8 = [11*size/8; 2*sizeY; 1];
sniperRiflePt9 = [5*size/8; 2*sizeY; 1];
sniperRiflePt10 = [2*size/8; 4*sizeY/3; 1];
invisibleNode = [9*size/8; 1.5*sizeY; 1];


##sniperGripPt1 = [ ; ; 1]; %done
##sniperGripPt2 = [sniperGripSize; ; 1]; %done
##sniperGripPt3 = [2*sniperGripSize; ; 1]; %done
##sniperGripPt4 = [2.5*sniperGripSize; sniperGripSize; 1]; %done
##sniperGripPt5 = [1.5*sniperGripSize; sniperGripSize; 1]; %done
##sniperGripPt6 = [1.25*sniperGripSize; sniperGripSize/3; 1]; %done
##sniperGripPt7 = [0.5*sniperGripSize; ; 1]; %done



%sniper Nozzle
##sniperNozzleSize = width/20;
sniperRiflePt11 = [-size; -sizeY; 1];
sniperRiflePt12 = [-4*size; -sizeY; 1];
sniperRiflePt13 = [-4*size; -5*sizeY/4; 1];
sniperRiflePt14 = [-17*size/4; -5*sizeY/4; 1];

invisibleNodeNozzle = [-18*size/4; -3*sizeY/4; 1];

sniperRiflePt15 = [-17*size/4; -1*sizeY/4; 1];
sniperRiflePt16 = [-4*size; -1*sizeY/4; 1];
sniperRiflePt17 = [-4*size; -2*sizeY/4; 1];
sniperRiflePt18 = [-size; -2*sizeY/4; 1];

##sniperNozzlePt1 = [; ; 1];
##sniperNozzlePt2 = [sniperNozzleSize; ; 1];
##sniperNozzlePt3 = [sniperNozzleSize; sniperNozzleSize/4; 1];
##sniperNozzlePt4 = [4*sniperNozzleSize; sniperNozzleSize/4; 1];
##sniperNozzlePt5 = [4*sniperNozzleSize; 3*sniperNozzleSize/4; 1];
##sniperNozzlePt6 = [sniperNozzleSize; 3*sniperNozzleSize/4; 1];
##sniperNozzlePt7 = [sniperNozzleSize; sniperNozzleSize; 1];
##sniperNozzlePt8 = [; sniperNozzleSize; 1];


%sniper tail
##sniperTailSize = width/20;
sniperRiflePt19 = [size; -sizeY; 1];
sniperRiflePt20 = [1.5*size; -sizeY; 1];
sniperRiflePt21 = [1.75*size; -1.5*sizeY; 1];
sniperRiflePt22 = [2*size; -1.5*sizeY; 1];
sniperRiflePt23 = [2*size; -0.5*sizeY; 1];
sniperRiflePt24 = [1.75*size; -0.5*sizeY; 1];
sniperRiflePt25 = [1.5*size; -0.5*sizeY; 1];
sniperRiflePt26 = [size; -0.5*sizeY; 1];

##sniperTailPt1 = [; sniperTailSize; 1];
##sniperTailPt2 = [2*sniperTailSize; sniperTailSize; 1];
##sniperTailPt3 = [3*sniperTailSize; ; 1];
##sniperTailPt4 = [4*sniperTailSize; ; 1];
##sniperTailPt5 = [4*sniperTailSize; 3*sniperTailSize; 1];
##sniperTailPt6 = [3*sniperTailSize; 3*sniperTailSize; 1];
##sniperTailPt7 = [2*sniperTailSize; 2*sniperTailSize; 1];
##sniperTailPt8 = [; 2*sniperTailSize; 1];



%sniper scope
##sniperScopeSize = width/20;
sniperRiflePt27 = [-0.5*size; -2.75*sizeY; 1];
sniperRiflePt28 = [-0.25*size; -2.75*sizeY; 1];
sniperRiflePt29 = [0; -2.25*sizeY; 1];
sniperRiflePt30 = [0.5*size; -2.25*sizeY; 1];
sniperRiflePt31 = [0.625*size; -2.25*sizeY; 1];
sniperRiflePt32 = [0.75*size; -2.25*sizeY; 1];
sniperRiflePt33 = [0.75*size; -1.75*sizeY; 1];
sniperRiflePt34 = [0.625*size; -1.75*sizeY; 1];

sniperRiflePt35 = [0.5*size; -1.75*sizeY; 1];
sniperRiflePt36 = [0.5*size; -sizeY; 1];

sniperRiflePt37 = [0.25*size; -1.75*sizeY; 1];
sniperRiflePt38 = [0.25*size; -sizeY; 1];

sniperRiflePt39 = [0; -1.75*sizeY; 1];
sniperRiflePt40 = [-0.25*size; -1.25*sizeY; 1];
sniperRiflePt41 = [-0.5*size; -1.25*sizeY; 1];

##scopePt1 = [; ; 1];
##scopePt2 = [sniperScopeSize; ; 1];
##scopePt3 = [2*sniperScopeSize; sniperScopeSize; 1];
##scopePt4 = [4*sniperScopeSize; sniperScopeSize; 1];
##scopePt5 = [4.5*sniperScopeSize; 0.5*sniperScopeSize; 1];
##scopePt6 = [5*sniperScopeSize; 0.5*sniperScopeSize; 1];
##
##scopePt7 = [5*sniperScopeSize; 2.5*sniperScopeSize; 1];
##scopePt8 = [4.5*sniperScopeSize; 2.5*sniperScopeSize; 1];
##scopePt9 = [4*sniperScopeSize; 2*sniperScopeSize; 1];
##scopePt10 = [2*sniperScopeSize; 2*sniperScopeSize; 1];
##scopePt11 = [sniperScopeSize; 3*sniperScopeSize; 1];
##scopePt12 = [; 3*sniperScopeSize; 1];





sniperRifle = [sniperRiflePt1, sniperRiflePt2, sniperRiflePt3, sniperRiflePt4, sniperRiflePt5, ...
sniperRiflePt6, sniperRiflePt7, sniperRiflePt8, sniperRiflePt9, sniperRiflePt10, ...
sniperRiflePt11, sniperRiflePt12, sniperRiflePt13, sniperRiflePt14, sniperRiflePt15, ...
sniperRiflePt16, sniperRiflePt17, sniperRiflePt18, ...
sniperRiflePt19, sniperRiflePt20, sniperRiflePt21, sniperRiflePt22, sniperRiflePt23, ...
sniperRiflePt24, sniperRiflePt25, sniperRiflePt26, sniperRiflePt27, sniperRiflePt28, ...
sniperRiflePt29, sniperRiflePt30, sniperRiflePt31, sniperRiflePt32, sniperRiflePt33, ...
sniperRiflePt34, sniperRiflePt35, sniperRiflePt36, sniperRiflePt37, sniperRiflePt38, ...
sniperRiflePt39, sniperRiflePt40, sniperRiflePt41, invisibleNode, invisibleNodeNozzle];
endfunction;
