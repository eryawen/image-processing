clearvars;
close all;
clc;

L = imread('lenaRGB.bmp');
lenaR = L(:,:,1);
lenaG = L(:,:,2);
lenaB = L(:,:,3);

subplot(1,3,1);
imshow(lenaR);
subplot(1,3,2);
imshow(lenaG);
subplot(1,3,3);
imshow(lenaB);