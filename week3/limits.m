clc
clear all
close all

syms x


f = ((x-3)/(x+9))^x;

limit1 = limit(f,x,inf);


f1 = ((x^4-16)/(x^3+8));

limit2 = limit(f1,x,-2,'right');
limit3 = limit(f1,x,-2,'left');

limit1

limit2

limit3

