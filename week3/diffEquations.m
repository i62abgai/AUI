clc;clear all;close all

y = dsolve('Dy+2*x*y=x','y(0)=1','x');
f = @(x,y)-2*x*y+x;

[x,y] = ode45(f,[0 3], 1);

figure()
plot(x,y)