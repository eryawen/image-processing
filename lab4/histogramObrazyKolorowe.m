function histogramObrazyKolorowe(I)

%1
R = I(:,:,1);
G = I(:,:,2);
B = I(:,:,3);

subplot(2,5,1);
imshow(I);
title('Oryginał');
subplot(2,5,2);
imshow(R);
title('R');
subplot(2,5,3);
imshow(G);
title('G');
subplot(2,5,4);
imshow(B);
title('B');

%2
Re = histeq(R, 256);
Ge = histeq(G, 256);
Be = histeq(B, 256);

I2 = I;
I2(:,:,1) = Re;
I2(:,:,2) = Ge;
I2(:,:,3) = Be;

subplot(2,5,5);
imshow(I2);
title('Po wyrównaniu RGB');

%3
HSV = rgb2hsv(I);
H = HSV(:,:,1);
S = HSV(:,:,2);
V = HSV(:,:,3);

subplot(2,5,6);
imshow(H);
title('H');
subplot(2,5,7);
imshow(S);
title('S');
subplot(2,5,8);
imshow(V);
title('V');

Ve = histeq(V, 256);
HSV2 = HSV;
HSV2(:,:,3) = Ve;

subplot(2,5,9);
imshow(hsv2rgb(HSV2));
title('Po wyrównaniu V');

end

