clc; clear;

syms t;

mag = @(a) sqrt(a(1)^2+a(2)^2+a(3)^2);

%precursors
r = [-2/7*t, sqrt(3)*t, t^2+(-1/2)*t];  
v = [diff(r(1), t), diff(r(2), t), diff(r(3), t)];
a = [diff(v(1), t), diff(v(2), t), diff(v(3), t)];
T = v/mag(v);

%relevant functions
s = int(mag(v));
k = 1/mag(v)*mag([diff(T(1),t), diff(T(2), t), diff(T(3),t)]);
p = 1/k;
at = diff(mag(v), t);
an = k*((mag(v))^2);
maga = mag(a);

%{
%evaluate at t = 1
t = 1;
double(subs(s));
double(subs(k));
double(subs(p));
double(subs(at));
double(subs(an));
double(subs(maga));
%}

range = [-2, 3];
subplot(4, 2, 1:2)
fplot3(r(1), r(2), r(3), range);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Drone Path');

subplot(4, 2, 3);
fplot(s, range);
xlabel('X');
ylabel('Y');
title('Drone Arclength');

subplot(4, 2, 4);
fplot(k, range);
xlabel('X');
ylabel('Y');
title('Drone curvature');

subplot(4, 2, 5:6);
fplot(at, range);
xlabel('X');
ylabel('Y');
title('Drone An Component');

subplot(4, 2, 7:8);
fplot(an, range);
xlabel('X');
ylabel('Y');
title('Drone At Component');


