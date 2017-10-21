clearvars;
close all;
clc;

load funkcjeLUT;

functions = ["kwadratowa" "log" "odwlog" ,"odwrotna","pierwiastkowa", "pila", "wykladnicza"];
I = imread('lena.bmp');

for i = 1:7
    figure();
    LUT(I, eval(functions(i)));  
end
