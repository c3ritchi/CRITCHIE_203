clc; clear;

syms t;

g = 7*t^3-3*t;
u = [t, -t^2, 2*t];
v = [1, -2*t, 3*t^2];

integrand = 5*g*u+v;

int(integrand)