function [height,width] = drawMap(imageName)

% This function draws the background map for the game using the image named
% imageName

% clear any current figures
clf;

%create game figure
figure(1);

%read background image and get its size
img = imread(imageName);
[height,width] = size(img);

%display background image in figure(1)
imshow(imageName);

%put a title on the figure
title("Crabs");

%keep the background and plot on top of it
hold on;

endfunction

