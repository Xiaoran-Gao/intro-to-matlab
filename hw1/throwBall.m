h = 1.5;
g = 9.8;
v = 4;
theta = 45;

t = linspace(0, 1, 1000);

% Distance
x = v * cos(theta * pi / 180) * t;
% Height
y = h + v * sin(theta * pi / 180) * t - 1/2 * g * t.^2;

firstNegIdx = min(find(y < 0));
disp(['The ball hits the ground at a distance of ', num2str(x(firstNegIdx)), ' meters.']);

figure;
plot(x, y);
xlabel('Distance');
ylabel('Height');
title('The Ball’s Trajectory')

hold on;

plot(linspace(0, max(x), 1000), zeros([1, 1000]), 'k--');

hold off;