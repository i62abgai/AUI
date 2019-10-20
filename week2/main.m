clc
clear all
close all

A = 0:10;

HRA_1 = 80*ones(length(A));

HRA_2 = (60/10)*A'+60;

HRA_3 = size(A);
HRA_3(A<3) = (20/3)*A(A<3)+60;
HRA_3(A>=3 & A<7) = 80;
HRA_3(A>=7 & A<=10) = (40/3)*(A(A>=7 & A<=10)-7)+80;

figure(1)

subplot(3,1,1)
plot(A,HRA_1)
xlabel('Activity')
ylabel('HeartRate')
grid on

subplot(3,1,2)
plot(A,HRA_2)
xlabel('Activity')
ylabel('HeartRate')
grid on

subplot(3,1,3)
plot(A,HRA_3)
xlabel('Activity')
ylabel('HeartRate')
grid on

S = 0:10;

[A1, S1] = meshgrid(S,A);

HRSA_1 = 60/10 * ((0.3*A1)+(S1*0.7))+60;

HRSA_2 = zeros(length(A),length(S));

HR_3 = size(A);
HR_3(A<3) = (20/3)*A(A<3)+60;
HR_3(A>=3 & A<7) = 80;
HR_3(A>=7 & A<=10) = (40/3)*(A(A>=7 & A<=10)-7)+80;

for i = 1 : length(A)
    for j = 1 : length(S)
            HRSA_2(i,j) = 0.3*HR_3(i)+0.7*HR_3(j);
    end
end

figure(2)
subplot(1,2,1)
surf(S1,A1,HRSA_1)
xlabel('Stress')
ylabel('Activity')
zlabel('HeartRate')
subplot(1,2,2)
surf(S1,A1,HRSA_2)
xlabel('Stress')
ylabel('Activity')
zlabel('HeartRate')
