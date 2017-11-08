close all;
clearvars;
clc;

I = imread('moon.bmp');
M = [0 1 0; 1 -4 1; 0 1 0];
M = M/9; %?

%4
Ik = uint8(conv2(I, M, 'same'));

n = 3; m = 3;
subplot(n, m, 1);
imshow(I);
title('Oryginał');
subplot(n, m, 2);
imshow(Ik+128, []);
title('Dodanie 128');
subplot(n, m, 3);
imshow(abs(Ik),[]);
title('Modul');

%5
M = fspecial('laplacian', 0);
Ik2 = uint8(conv2(I, M, 'same'));
subplot(n, m, 5);
imshow(Ik2+128, []);
title('Fspecial - Dodanie 128');
subplot(n, m, 6);
imshow(abs(Ik2),[]);
title('Fspecial - Modul');

%6
subplot(n, m, 8);
imshow(imadd(I, Ik2, 'uint16'),[]); %? konwersja/skalowanie
title('Suma');
subplot(n, m, 9);
imshow(imsubtract(I, Ik2),[]);
title('Roznica');



