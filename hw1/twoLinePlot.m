clear all;

figure;

t = 0:.01:2*pi;
plot(t, sin(t));

hold on;

plot(t, cos(t), 'r-');

hold off;

xlabel('Time (s)');
ylabel('Function value');
title('Sin and Cos functions');
legend('Sin', 'Cos');

xlim([0, 2*pi]);
ylim([-1.4, 1.4]);