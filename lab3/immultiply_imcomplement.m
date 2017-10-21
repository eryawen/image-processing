clearvars;
close all;
clc;

L = imread('lena.bmp');
J = imread('jet.bmp');

% immultiply

I = immultiply(L,J);
I_c = immultiply(L, 1.5);
mask = imread('kolo.bmp');
mask_b = boolean(mask);
I_m = immultiply(L,mask_b);

figure();
subplot(2,2,1);
imshow(I);
title('immultiply');
subplot(2,2,2);
imshow(I_c);
title('immultiply - constant');
subplot(2,2,3);
imshow(I_m);
title('immultiply - mask');

%imcomplement
IL = imcomplement(L);
IJ = imcomplement(J);

figure();
imshow(IL);
figure();
imshow(IJ);




