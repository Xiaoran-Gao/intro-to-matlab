clear all;

original = 'This is my top secret message!';

encodingVec = randperm(length(original));
encoded = original(encodingVec);

tempMat = transpose([encodingVec; 1:length(original)]);
tempMat = sortrows(tempMat, 1);

decodingVec = tempMat(:, 2);
decoded = encoded(decodingVec);

disp(['Original: ', original, newline, ...
    'Encoded: ', encoded, newline, ...
    'Decoded: ', decoded]);

correct = strcmp(original, decoded);
disp(['Decoded correctly (1 true, 0 false): ', num2str(correct)]);