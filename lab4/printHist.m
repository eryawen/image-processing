function printHist(H)
figure();

subplot(2,2,1);
imshow(H);
title('Image');

subplot(2,2,2)
imshow(imadjust(H));
title('Imadjust');

subplot(2,2,3);
histeq(H, 256);
title('Histeq');

subplot(2,2,4);
A = adapthisteq(H);
imshow(A);
title('Adapthisteq');

end

