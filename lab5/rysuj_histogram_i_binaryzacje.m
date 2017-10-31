function rysuj_histogram_i_binaryzacje(I, i, n, bin)
m = 3;

subplot(n, m, (i-1)*3+1);
imshow(I);
title('Obraz');

subplot(n, m, (i-1)*3+2);
imhist(I, 256);
title('Histogram');

subplot(n, m, (i-1)*3+3);
k=bin/255;
I_binary = im2bw(I, k);
imshow(I_binary);
title('Po binaryzacji');

end

