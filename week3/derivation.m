clc
clear all
close all

%Derivation
syms x
f = log(x)/(x^2+1);
diff(f,x)

%Partial derivation
syms x y

z = exp(x^2+y^2);

fx = diff(z,x);
fy = diff(z,y);

fx

fy



