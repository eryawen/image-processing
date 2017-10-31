clearvars;
close all;
clc;

L = imread('lenaRGB.bmp');
J = imread('jezioro.jpg'); 

histogramObrazyKolorowe(L);
figure();
histogramObrazyKolorowe(J);
