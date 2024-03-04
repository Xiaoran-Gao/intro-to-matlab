% Problem 1
a = 10;
b = 2.5 * 10e23;
c = 2 + 3 * i;
d = exp(2 / 3 * pi * j);

% Problem 2
aVec = [3.14, 15, 9, 26];
bVec = [2.71; 8; 28; 182];
cVec = linspace(5, -5, 51);
dVec = logspace(0, 1, 101);
eVec = "Hello";

% Problem 3
aMat1 = 2 * ones(9, 9);
aMat2 = 2 + zeros(9, 9);
assert(isequal(aMat1, aMat2));

bMat = diag([1:5, 4:-1:1]);

cMat = reshape(1:100, [10, 10]);

dMat = nan([3, 4]);

eMat = [13, -1, 5;
        -22, 10, -87];

rng(2024);
fMat1 = floor(rand([5, 3]) * 7 - 3);
rng(2024);
fMat2 = ceil(rand([5, 3]) * 7 - 4);
rng(2024);
fMat3 = randi([-3, 3], [5, 3]);
assert(isequal(fMat1, fMat3));
assert(isequal(fMat2, fMat3));

% Problem 4
x = 1 / (1 + exp(-(a-15)/6));

y1 = (a^(1/2) + b^(1/21)) ^ pi;
y2 = (sqrt(a) + nthroot(b, 21)) ^ pi;
assert(y1 == y2);

z = log(real((c+d)*(c-d)) * sin(a*pi/3)) / (c * conj(c));

% Problem 5
xMat = (aVec * bVec) * (aMat1 ^ 2);
yMat = bVec * aVec;
zMat = det(cMat) * (aMat1 * bMat).';

% Problem 6
cSum = sum(cMat, 1);
eMean = mean(eMat, 2);
eMat(1, :) = [1, 1, 1];
cSub = cMat(2:9, 2:9);
lin = 1:20;
lin(2:2:end) = -lin(2:2:end);
rng(2024);
r = rand([1, 5]);
r(find(r < 0.5)) = 0;