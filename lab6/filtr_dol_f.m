function filtr_dol_f( I, F, n, m, nr)

%3 conv2 - realizacja konwolucji, shape - problem brzegowy - na krawedziach
%nie mozna wyznaczyc otoczenia, same - zachowanie rozmiaru, fspecial -
%tworzenie masek do filtracji

Ik = uint8(conv2(I, F, 'same'));

subplot(n, m, 1+m*(nr-1));
imshow(Ik);
title('Po konwolucji');
subplot(n, m, 2+m*(nr-1));
imshow(imabsdiff(I, Ik), []); %?
title('Roznica');
end

