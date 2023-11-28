function machine = getCNCMachine (width, height);
  %this function stores and returns the crab at the origin.
  %each of the lines below are individual points of the crab.
machineWidth = width/10;
LocationOnMapX = 7*width/8;
LocationOnMapY = 7*height/8;

machinePt1 = [LocationOnMapX + machineWidth/2; LocationOnMapY - machineWidth/4; 1];
machinePt2 = [LocationOnMapX + machineWidth/2; LocationOnMapY + machineWidth/4; 1];
machinePt3 = [LocationOnMapX - machineWidth/2; LocationOnMapY + machineWidth/4; 1];
machinePt4 = [LocationOnMapX - machineWidth/2; ; LocationOnMapY - machineWidth/4; 1];

machinePt5 = [LocationOnMapX + 0; LocationOnMapY - machineWidth/2; 1];
machinePt6 = [LocationOnMapX + machineWidth; LocationOnMapY - machineWidth/2; 1];
machinePt7 = [LocationOnMapX + machineWidth; LocationOnMapY + 0; 1];


machinePt8 = [LocationOnMapX + machineWidth/2; LocationOnMapY - machineWidth/2; 1];
machinePt9 = [LocationOnMapX + machineWidth/2; LocationOnMapY - 1.25*machineWidth; 1];
machinePt10 = [LocationOnMapX + machineWidth/4; LocationOnMapY - 1.25*machineWidth; 1];
machinePt11 = [LocationOnMapX + machineWidth/6; LocationOnMapY - 0.87*machineWidth; 1];

machine = [machinePt1, machinePt2, machinePt3, machinePt4, machinePt5, machinePt6, machinePt7, machinePt8, machinePt9, machinePt10, machinePt11];

endfunction
