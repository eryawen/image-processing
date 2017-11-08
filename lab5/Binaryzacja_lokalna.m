clc;
close all;
clearvars;

%Rozmiar obrazu 256x256, rozmiar okna 15

%4 Binaryzacja lokalna

I = imread('rice.png');
%I = imread('katalog.bmp');
Ibw = I; Ibw_s = I;

%Parametry - binaryzacja lokalna
[X, Y] = size(I);
%W = 15;
W = 35;
W2 = floor(W/2); % połowa rozmiaru okna (promień dla średniej)

%Parametry - metoda Savol'i
k = 0.15; R = 128;

for i = 1:X
    for j = 1:Y
        M = meanLT(i,j, W2, I, X, Y);
        if I(i,j) < M
            Ibw(i,j) = 0;
        else
            Ibw(i,j) = 255;
        end
        
        %9 Metoda Sauvol'i
        stdDev = stddevLT(i, j, W2, I, M, X, Y);
        MS = M * (1 - k*(stdDev/R-1)); % +/- zależy od tego czy mamy jasne/ciemne tło
        if I(i,j) < MS
            Ibw_s(i,j) = 0;
        else
            Ibw_s(i,j) = 255;
        end
        
    end
end

subplot(1,3,1);
imshow(I);
title('Oryginał');
subplot(1,3,2);
imshow(Ibw);
title('Po binaryzacji lokalnej');
subplot(1,3,3)
imshow(Ibw_s);
title('Metoda Sauvoli');


        
       