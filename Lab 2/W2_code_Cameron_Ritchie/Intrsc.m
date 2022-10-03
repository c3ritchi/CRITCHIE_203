
t = linspace(-2, 2, 1000);

x = t;
y = t;
z = ((-cos(t.^4-8.*t)+sqrt(abs((cos(t.^4-8.*t).^2-4.*(2.*t.^4+6).*(4+t.^2+t.^4)))))./(2.*(2.*t.^4+6)));


plot3(x,y,z,'b-.', 'LineWidth', 2);
zlim([0.1, 2])