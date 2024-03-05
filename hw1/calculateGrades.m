clear all;

load classGrades.mat;
disp(namesAndGrades(1:5, :));

grades = namesAndGrades(:, 2:end); % Or 2:size(namesAndGrades, 2)

meanGrades = mean(grades, 1);
disp(meanGrades);

meanGrades = nanmean(grades, 1);
disp(meanGrades);

meanMatrix = ones([15, 1]) * meanGrades;
disp(meanMatrix);

curvedGrades = 3.5 * grades ./ meanMatrix;

disp(nanmean(curvedGrades, 1));

curvedGrades(curvedGrades > 5) = 5;

totalGrade = ceil(nanmean(curvedGrades, 2));

letters = 'FDCBA';

letterGrades = letters(totalGrade);
disp(['Grades: ', letterGrades]);