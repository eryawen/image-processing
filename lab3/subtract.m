clearvars;
close all;
clc;

L = imread('lena.bmp');
J = imread('jet.bmp');

% subtract

S = imsubtract(L, J);

L16 = int16(L);
J16 = int16(J);
S2 = imsubtract(L16,J16);
D = imabsdiff(L,J);

figure();
subplot(2,2,1);
imshow(S);
title('substract');
subplot(2,2,2);
imshow(S2,[]);
title('substract int16');
subplot(2,2,3);
imshow(D);
title('imabsdiff');
