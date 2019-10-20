clc; clear all; close all;
%load the data
load noisyecg.mat
%get the length of the signal
t = 1:length(noisyECG_withTrend);

%plot the signal
figure(1)
plot(t,noisyECG_withTrend)
title('Signal with a Trend')
xlabel('Samples');
ylabel('Voltage(mV)')
legend('Noisy ECG Signal')
grid on

windowSize = 5; 
b = (1/windowSize)*ones(1,windowSize);
a = 1;

filtered = filter(b, a, noisyECG_withTrend);

%plot the filtered signal
figure(2)
plot(t, filtered)
xlabel('Samples');
ylabel('Voltage(mV)')
legend('Noisy ECG Signal Filtered')
grid on

%findpeaks
findpeaks(filtered, t, 'MinPeakHeight', 0.7)

