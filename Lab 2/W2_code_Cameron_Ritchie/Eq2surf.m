clc
clear

[x, z] = meshgrid(0.1:0.01:2);
y = x;

surf(x, y, z, 'EdgeColor', 'none', 'FaceColor', 'y');