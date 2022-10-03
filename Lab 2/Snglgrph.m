clc
clear

%curve
[x, y] = meshgrid(-2:0.01:2);
z = ((-cos(x.^3.*y-8.*x)+sqrt(abs((cos(x.^3.*y-8.*x).^2-4.*(2.*x.^4+6).*(4+x.^2+y.^4)))))./(2.*(2.*x.^4+6)));

surf(x,y,z, 'EdgeColor', 'none', 'FaceAlpha', 0.9, 'FaceColor', 'g');
hold on;

%contour
[x, y] = meshgrid(-2:0.01:2);
z = ((-cos(x.^3.*y-8.*x)+sqrt(abs((cos(x.^3.*y-8.*x).^2-4.*(2.*x.^4+6).*(4+x.^2+y.^4)))))./(2.*(2.*x.^4+6)));

[c, h] = contour(x,y,z,8);
colorbar;
clabel(c,h)

hold on;

%plane
[x, z] = meshgrid(-2:0.01:2);
surf(x, x, z, 'FaceAlpha', '0.7', 'EdgeColor', 'none', 'FaceColor', 'c');
zlim([0,2]);

hold on;

%intersection
t = linspace(-2, 2, 1000);
x = t;
y = t;
z = ((-cos(t.^4-8.*t)+sqrt(abs((cos(t.^4-8.*t).^2-4.*(2.*t.^4+6).*(4+t.^2+t.^4)))))./(2.*(2.*t.^4+6)));

plot3(x,y,z,'k:', 'LineWidth', 3);

%Proper titles, etc.
title('Graphing Curves, Intersection of Curves and Contour Map');
xlabel('X');
ylabel('Y');
zlabel('Z');