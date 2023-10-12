
function handle = drawLine (p, q, myColor)
%{
drawline draws a line from point p to point q with myColor color
%}

% extract the x coordinates
  x=[ p(1) ; q(1) ];

% extract the y coordinates
  y=[ p(2) ; q(2) ];

  handle = plot(x,y,myColor);

  set(handle, "LineWidth", 3);

endfunction
