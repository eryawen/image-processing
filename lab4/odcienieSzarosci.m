clearvars;
close all;
clc;

L1 = imread('lena1.bmp');
L2 = imread('lena2.bmp');
L3 = imread('lena3.bmp');
L4 = imread('lena4.bmp');

n = 256;

figure(1);
subplot(4,2,1);
imshow(L1);
subplot(4,2,2);
imhist(L1, n);

subplot(4,2,3);
imshow(L2);
subplot(4,2,4);
imhist(L2, n);

subplot(4,2,5);
imshow(L3);
subplot(4,2,6);
imhist(L3, n);

subplot(4,2,7);
imshow(L4);
subplot(4,2,8);
imhist(L4, n);

%3
H = imread('hist1.bmp');
figure(2);
subplot(1,5,1);
imshow(H);
title('Oryginał');
subplot(1,5,2);
imhist(H,n);
title('Histogram');

% Skalowanie, wykorzystujemy caly dostepny zakres
HI = imadjust(H);
subplot(1,5,3);
imshow(HI);
title('Imadjust');
subplot(1,5,4);
imhist(HI,n);
title('Histogram imadjust');

%%%%% Histogram skumulowany - liczba pikseli o odcieniu od 0 do n-1

[counts, binLoc] = imhist(H,256);
C = cumsum(counts);

mc = max(C);
mh = max(counts);
k = mc / mh;
C2 = C / k; %skalowanie, żeby zmieściło się na wykresie

subplot(1,5,5);
title('Histogram skumulowany');
hold on;
plot(binLoc,counts);
plot(binLoc,C2);
hold off;


% Wyrównywanie histogramu - taka sama liczba pikseli reprezentowana przez
% każdy poziom szarości, operacja LUT, funkcją przejścia jest histogram skumulowany

figure(3);

mc2 = max(C2);
k = mc2 / 255;
C3 = C2 / k;
lut = uint8(C3);

subplot(1,3,1)
HE = intlut(H, lut);
imshow(HE);
title('Po wyrównaniu');

subplot(1,3,2);
imhist(HE,n);
title('Histogram');

subplot(1,3,3);
[counts, binLoc] = imhist(HE,256);
C = cumsum(counts);

mc = max(C);
mh = max(counts);
k = mc / mh;
C2 = C / k;

subplot(1,3,3);
title('Skumulowany');
hold on;
plot(binLoc,counts);
plot(binLoc,C2);
hold off;

figure(4);
subplot(1,2,1);
histeq(H, 256);
title('histeq');
subplot(1,2,2);
N = adapthisteq(H);
imshow(N);
title('adapthisteq');
%%%%%

printHist(imread('hist2.bmp'));
printHist(imread('hist3.bmp'));
printHist(imread('hist4.bmp'));
