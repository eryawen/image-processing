close all;
clc;
clearvars;

I = imread('lenaSzum.bmp');

% Filtracja medianowa - zachowuje krawędzie
Im = medfilt2(I);
D = imabsdiff(I, Im);

n = 3; m = 2;
subplot(n, m, 1);
imshow(I);
title('Oryginał');
subplot(n, m, 3);
imshow(Im);
title('Po filtracji');
subplot(n, m, 5);
imshow(D, []);
title('Różnica');

% Filtracja uśredniająca
F = fspecial('average', 3);
Im = uint8(conv2(I, F, 'same'));;
D = imabsdiff(I, Im);
subplot(n, m, 2);
imshow(I);
title('Oryginał');
subplot(n, m, 4);
imshow(Im);
title('Po filtracji');
subplot(n, m, 6);
imshow(D, []);
title('Różnica');


%3 Posteryzacja

for i = 1:10
    I = medfilt2(I);
end

figure();
imshow(I);
title('Posteryzacja');

% Definicja dla obrazów kolorowych - mediana to ten piksel z otoczenia,
% którego odległość od innych pikseli z otoczenia jest najmniejsza

% Inne filtry: modowy, olimpijski(średnia bez wartości ekstremalnych),
% hybrydowy filtr medianowy, minimalny i maksymalny


