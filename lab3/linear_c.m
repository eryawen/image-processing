clearvars;
close all;
clc;

L = imread('lena.bmp');
J = imread('jet.bmp');

LC1 = imlincomb(1.5, L, 1, J);
LC2 = imlincomb(0.3, L, 1, J);
LC3 = imlincomb(1, L, 0.5, J);

subplot(2,2,1:2); 
imshow(LC1);
subplot(2,2,3);
imshow(LC2);
subplot(2,2,4);
imshow(LC3);