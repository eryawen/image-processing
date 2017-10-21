function LUT(obraz, przekodowanie)
    subplot(2,2,1:2); 
    plot(przekodowanie);
    title('Funkcja'); 
    
    ImgLut = intlut(obraz, przekodowanie);
    
    subplot(2,2,3); 
    imshow(obraz); 
    title('Oryginał');
    
    subplot(2,2,4); 
    imshow(ImgLut); 
    title('Po przekodowaniu');
end

