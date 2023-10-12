

function mapCheck = IsOnMap (x ,y ,width, height, size)
  %size is the buffer

  if(x>size && x<width-size && y>size && y<height-size)
    mapCheck=true;
   else
    mapCheck=false;
  endif


endfunction
