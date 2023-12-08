function restart = drawEndScreen(img, numCrabs, crabsCaught)
  
  
  
  crabsCaughtStr = num2str(crabsCaught);
  

  s = ["You Caught ", crabsCaughtStr, " out of ", num2str(numCrabs)];


  
  drawMap(img);
  hold on

  textHandle1 = text(1700,500,strcat(s), 'FontSize', 20, 'Color', 'red');

  pause(4)
  delete(textHandle1)
  textHandle2 = text(1600,500,'would you like to play again?', 'FontSize', 20, 'Color', 'red');
  textHandle2 = text(1600,600,'Y = yes, N = no', 'FontSize', 20, 'Color', 'red');


    while(1)
    commandwindow();
    cmd = kbhit(1);
      if (cmd == 'y' || cmd == 'Y')
          restart = 1;
          break
      elseif (cmd == 'n' || cmd == 'N')
          restart = 0;
          break
      endif
      pause(.1)
    endwhile

endfunction
