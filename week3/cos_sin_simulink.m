clc
sin_x = simout(:,1);
cos_x = simout(:,2);

[locsin, pksin] = findpeaks(sin_x);
[loccos, pkcos] = findpeaks(cos_x);

figure()
plot(tout,sin_x)
hold on
plot(tout,cos_x)
grid on
title('Two functions plot')
ylabel('sin(x) and cos(x)')
xlabel('time')

plot(tout(pksin),locsin,'*r','MarkerSize',10)
plot(tout(pkcos),loccos,'ob','MarkerSize',10)

