close all;
clc;
clearvars;

I = imread('plansza.bmp');

n = 5; m = 2;
subplot(n, m, 1:2);
imshow(I);
title('Oryginal');

r = [0,3,5,9,15];
for i = 2:5
    F = fspecial('average', r(i));
    filtr_dol_f( I, F, n, m, i);
end

L = imread('lena.bmp');
figure();
subplot(n, m, 1:2);
imshow(L);
title('Oryginal');

for i = 2:5
    F = fspecial('average', r(i));
    filtr_dol_f( L, F, n, m, i);
end

%8 Dobór maski
M = [1 2 1; 2 4 2; 1 2 1];
M = M/sum(M); % normalizacja
figure();
filtr_dol_f( L, M, 2, 1, 1);

%9 maska Gaussa
k1 = 0.5; k2 = 1.5; k3 = 0.1;
G1 = fspecial('gaussian', 5, k1);
G2 = fspecial('gaussian', 5, k2);
G3 = fspecial('gaussian', 5, k3);

n = 3; m = 2;
figure();
subplot(n, m, 1);
mesh(G1);
title(num2str(k1));
subplot(n, m, 2);
imshow(uint8(conv2(L, G1, 'same')));
subplot(n, m, 3);
mesh(G2);
title(num2str(k2));
subplot(n, m, 4);
imshow(uint8(conv2(L, G2, 'same')));
subplot(n, m, 5);
mesh(G3);
title(num2str(k3));
subplot(n, m, 6);
imshow(uint8(conv2(L, G3, 'same')));





