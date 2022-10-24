clc; clear;

syms a b x y;

f = (a*y*sin(x*y^2))/(exp(x*y^2)+(7+x^2)/(x*y^2))+b*x*y^2;

%the expressions
fx = diff(f, x) %fx
fy = diff(f, y) %fy
fxy = diff(diff(f, x), y) %fxy
fyx = diff(diff(f, y), x) %fyx

%sub in values
a = 1;
b = 4;
x = 0.5;
y = -1;

double(subs(fx))
double(subs(fy))
double(subs(fxy))
double(subs(fyx))