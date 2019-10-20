clc
clear all
close all

matrix_systems = [5 2;1 -7];
matrix_systems_1 = [4 2;2 -7];
matrix_systems_2 = [5 4;1 2];

x1 = det(matrix_systems_1)/det(matrix_systems);
x2 = det(matrix_systems_2)/det(matrix_systems);