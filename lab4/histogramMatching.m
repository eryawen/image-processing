clearvars;
close all;
clc;

I = imread('phobos.bmp');
J = histeq(I);

%2
figure(1);
subplot(2,2,1);
imshow(I);
subplot(2,2,2);
imshow(J);

%3
load histogramZadany;

figure();
subplot(3,2,1)
imshow(I);
subplot(3,2,2);
bar(histogramZadany);
subplot(3,2,3);
K = histeq(I, histogramZadany); %dopasowanie
imshow(K);
subplot(3,2,4);
imhist(K,256);

%4

subplot(3,2,5)
imshow(imadjust(I));
title('Imadjust');

subplot(3,2,6);
A = adapthisteq(I);
imshow(A);
title('Adapthisteq');



