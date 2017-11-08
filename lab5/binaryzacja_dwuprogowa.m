clc;
close all;
clearvars;

I = imread('bart.bmp');
m = 1; n = 3;

subplot(m, n, 1);
imshow(I);
title('Oryginał');
subplot(m, n, 2);
imhist(I);
title('Histogram');

pd = 190; pg = 205;
Ibw = I > pd & I < pg;
Ibw = uint8(Ibw);

subplot(m, n, 3);
imshow(Ibw,[]);
title('Po binaryzacji');