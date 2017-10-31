clc;
close all;
clearvars;

%4 Obraz/histogram/binaryzacja
figure(1); n = 4;
rysuj_histogram_i_binaryzacje(imread('figura.png'), 1, n, 100);
rysuj_histogram_i_binaryzacje(imread('figura2.png'), 2, n, 130);
rysuj_histogram_i_binaryzacje(imread('figura3.png'), 3, n, 70);
rysuj_histogram_i_binaryzacje(imread('figura4.png'), 4, n, 55);

%2
figure(2);
%I = imread('coins.png');
%I = imread('rice.png');
%I = imread('tekst.bmp');
%I = imread('obiekty.bmp');
I = imread('katalog.bmp');

m = 2; n = 3;

subplot(n, m, 1);
imshow(I);
title('Obraz');

subplot(n, m, 2);
imhist(I, 256);
title('Histogram');

%3 Binaryzacja
subplot(n, m, 3);

%k=95;
%k=135;
%k=160;
%k=170;
k=105;

I_binary = im2bw(I, k/255);
imshow(I_binary);
title(['Binaryzacja, ', num2str(k)]);

%5 Automatyczna binaryzacja - metoda Ots'u - podział na klasy tak, żeby
% wariancja była minimalna
p = graythresh(I);
subplot(n, m, 4);
imshow(im2bw(I, p));
title(['Otsu, ', num2str(p*255)]);

%6/7
% Kittler - minimalizacja funkci błędu zbudowanej z dystrybuanty
% prawdopodobieństwa i odchylenia standardowego
p = clusterKittler(I);
subplot(n, m, 5);
imshow(im2bw(I, p/255));
title(['Kittler, ', num2str(p)]);

% Yen - maksymalizacja entropii obiektów i tła
p = entropyYen(I);
subplot(n, m, 6);
imshow(im2bw(I, p/255));
title(['Yen, ', num2str(p)]);

%figure('rend','painters','pos',[300 300 800 800]);



