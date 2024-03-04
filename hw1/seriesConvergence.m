p = 0.99;
k = 1:1000;

% Elementwise calculation
geomSeries = p .^ k;

G = 1 / (1-p);

figure;
plot(linspace(0, max(k), 1000), G * ones([1, 1000]), 'r');

hold on;

plot(k, cumsum(geomSeries), 'b');

hold off;

xlabel('Index');
ylabel('Sum');
title('Convergence of Geometric Series with p = 0.99');

legend('Infinite Sum', 'Finite Sum');

p = 2;
n = 1:500;

% Elementwise calculation
pSeries = n .^ (-p);

P = pi^2 / 6;

figure;
plot(linspace(0, max(n), 500), P * ones([1, 500]), 'r');

hold on;

plot(n, cumsum(pSeries), 'b');

hold off;

xlabel('Index');
ylabel('Sum');
title('Convergence of p-Series with p = 2');

legend('Infinite Sum', 'Finite Sum');