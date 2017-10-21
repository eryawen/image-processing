clearvars;
close all;
clc;

% sum

L = imread('lena.bmp');
J = imread('jet.bmp');

sum_ = imadd(L,J);
sum16 = imadd(L,J,'uint16'); %

subplot(2,1,1);
imshow(sum_);
subplot(2,1,2);
imshow(sum16,[]); %
