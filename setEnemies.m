function [numCrabs, numJelly] = setEnemies (level)

  if (level <=3)
    numCrabs = level;
    numJelly = 0;

  elseif (level <= 6)
    numCrabs = level;
##    numJelly = 4;
    numJelly = 0;

  else
   numCrabs = level;
##   numJelly = 5;
   numJelly = 1;
  endif


endfunction
