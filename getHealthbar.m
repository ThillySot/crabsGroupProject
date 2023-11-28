function health = getHealthbar (width, height);
  %this function stores and returns the crab at the origin.
  %each of the lines below are individual points of the crab.
healthBarSize = width/40;
twoThirdsOfMap = 3*width/5;
healthBar_Y_AxisLocation = height/20;

%body
##healthPt1 = [twoThirdsOfMap + healthBarSize; healthBar_Y_AxisLocation; 1];
##healthPt2 = [twoThirdsOfMap + healthBarSize; healthBarSize + healthBar_Y_AxisLocation; 1];
##healthPt3 = [twoThirdsOfMap + 0; healthBarSize + healthBar_Y_AxisLocation; 1];
##healthPt4 = [twoThirdsOfMap + 0; healthBar_Y_AxisLocation; 1];
##
##healthPt5 = [twoThirdsOfMap + 2*healthBarSize; healthBar_Y_AxisLocation; 1];
##healthPt6 = [twoThirdsOfMap + 2*healthBarSize; healthBarSize + healthBar_Y_AxisLocation; 1];
##healthPt7 = [twoThirdsOfMap+ healthBarSize; healthBarSize + healthBar_Y_AxisLocation; 1];
##healthPt8 = [twoThirdsOfMap+ healthBarSize; healthBar_Y_AxisLocation; 1];
##
##healthPt9 = [twoThirdsOfMap + 3*healthBarSize; healthBar_Y_AxisLocation; 1];
##healthPt10 = [twoThirdsOfMap + 3*healthBarSize; healthBarSize + healthBar_Y_AxisLocation; 1];
##healthPt11 = [twoThirdsOfMap + 2*healthBarSize; healthBarSize + healthBar_Y_AxisLocation; 1];
##healthPt12 = [twoThirdsOfMap + 2*healthBarSize; healthBar_Y_AxisLocation; 1];

healthPt1 = [twoThirdsOfMap + 2*healthBarSize; healthBar_Y_AxisLocation + healthBarSize; 1];
healthPt2 = [twoThirdsOfMap + healthBarSize; healthBar_Y_AxisLocation; 1];
healthPt3 = [twoThirdsOfMap; healthBarSize + healthBar_Y_AxisLocation; 1];
healthPt4 = [twoThirdsOfMap + 2*healthBarSize; healthBar_Y_AxisLocation + 3* healthBarSize; 1];
healthPt5 = [twoThirdsOfMap + 4*healthBarSize; healthBar_Y_AxisLocation + healthBarSize; 1];
healthPt6 = [twoThirdsOfMap + 3*healthBarSize; healthBar_Y_AxisLocation; 1];

healthPt7 = [5*healthBarSize + twoThirdsOfMap + 2*healthBarSize; healthBar_Y_AxisLocation + healthBarSize; 1];
healthPt8 = [5*healthBarSize + twoThirdsOfMap + healthBarSize; healthBar_Y_AxisLocation; 1];
healthPt9 = [5*healthBarSize + twoThirdsOfMap; healthBarSize + healthBar_Y_AxisLocation; 1];
healthPt10 = [5*healthBarSize + twoThirdsOfMap + 2*healthBarSize; healthBar_Y_AxisLocation + 3* healthBarSize; 1];
healthPt11 = [5*healthBarSize + twoThirdsOfMap + 4*healthBarSize; healthBar_Y_AxisLocation + healthBarSize; 1];
healthPt12 = [5*healthBarSize + twoThirdsOfMap + 3*healthBarSize; healthBar_Y_AxisLocation; 1];

healthPt13 = [10*healthBarSize + twoThirdsOfMap + 2*healthBarSize; healthBar_Y_AxisLocation + healthBarSize; 1];
healthPt14 = [10*healthBarSize + twoThirdsOfMap + healthBarSize; healthBar_Y_AxisLocation; 1];
healthPt15 = [10*healthBarSize + twoThirdsOfMap; healthBarSize + healthBar_Y_AxisLocation; 1];
healthPt16 = [10*healthBarSize + twoThirdsOfMap + 2*healthBarSize; healthBar_Y_AxisLocation + 3* healthBarSize; 1];
healthPt17 = [10*healthBarSize + twoThirdsOfMap + 4*healthBarSize; healthBar_Y_AxisLocation + healthBarSize; 1];
healthPt18 = [10*healthBarSize + twoThirdsOfMap + 3*healthBarSize; healthBar_Y_AxisLocation; 1];
health = [healthPt1, healthPt2, healthPt3, healthPt4, healthPt5, healthPt6, healthPt7, healthPt8, healthPt9, healthPt10, healthPt11, healthPt12, healthPt13, healthPt14, healthPt15, healthPt16, healthPt17, healthPt18];

endfunction
