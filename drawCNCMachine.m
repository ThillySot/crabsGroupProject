function CNCMachineGraphics = drawCNCMachine (width, height);

machine = getCNCMachine(width, height);

% Extract the sniper-scope points
pt1=machine( : , 1);
pt2=machine( : , 2);
pt3=machine( : , 3);
pt4=machine( : , 4);
pt5=machine( : , 5);
pt6=machine( : , 6);
pt7=machine( : , 7);
pt8=machine( : , 8);
pt9=machine( : , 9);
pt10=machine( : , 10);
pt11=machine( : , 11);

CNCMachineGraphics(1) = drawLine(pt1 , pt2 , "k");
CNCMachineGraphics(2) = drawLine(pt2 , pt3 , "k");
CNCMachineGraphics(3) = drawLine(pt3 , pt4 , "k");
CNCMachineGraphics(4) = drawLine(pt4 , pt1 , "k");

CNCMachineGraphics(5) = drawLine(pt4 , pt5 , "k");
CNCMachineGraphics(6) = drawLine(pt5 , pt6 , "k");
CNCMachineGraphics(7) = drawLine(pt6 , pt7 , "k");
CNCMachineGraphics(8) = drawLine(pt7 , pt2 , "k");
CNCMachineGraphics(9) = drawLine(pt6 , pt1 , "k");

CNCMachineGraphics(10) = drawLine(pt8 , pt9 , "k");
CNCMachineGraphics(11) = drawLine(pt9 , pt10 , "k");
CNCMachineGraphics(12) = drawLine(pt10 , pt11 , "k");


endfunction
