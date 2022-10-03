
clc
clear

[x, y] = meshgrid(-2:0.01:2);

z = ((-cos(x.^3.*y-8.*x)+sqrt(abs((cos(x.^3.*y-8.*x).^2-4.*(2.*x.^4+6).*(4+x.^2+y.^4)))))./(2.*(2.*x.^4+6)));

[c, h] = contour(x,y,z,8);
colorbar;
clabel(c,h)
