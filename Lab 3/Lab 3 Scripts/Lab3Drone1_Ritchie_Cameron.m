clc; clear;

syms t;

r = [-2/7*t, sqrt(3)*t, t^2+(-1/2)*t];  

fplot3(r(1), r(2), r(3), [-2, 3]);

xlabel('X');
ylabel('Y');
zlabel('Z');
title('Graphing Drone Path');