clearvars;
close all;
clc;

K = imread('kolo.bmp');
Kw = imread('kwadrat.bmp');

Kb = boolean(K);
Kwb = boolean(Kw);

subplot(2,1,1);
imshow(Kb);
subplot(2,1,2);
imshow(Kwb);

figure();
subplot(2,2,1);
imshow(~Kb);
title('not');
subplot(2,2,2);
imshow(Kb&Kwb);
title('and');
subplot(2,2,3);
imshow(Kb|Kwb);
title('or');
subplot(2,2,4);
imshow(xor(Kb,Kwb));
title('xor');