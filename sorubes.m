clear all;clc;close all;
J1= imread('C:\Users\Casper\Desktop\images\kader.png');

%0.8 sigma katsayýlý 3x3 Gauss
g=imnoise (J1, 'gaussian',0,0.8);
filtre = fspecial('gaussian', [3 3], 0.8); 
c = imfilter(J1,filtre); % filtre matrisi tüm imgeye iþleniyor
figure
subplot(2,2,1.5), imshow(J1), title('Orijinal Resim');
subplot(2,2,3),   imshow(g),  title('0.8 Sigma Gauss');
subplot(2,2,4),   imshow(c),  title('3x3 maske boyutu gauss');


%5x5 median
imgGri = rgb2gray(J1);
imgDou = im2double(imgGri);
hOrt = fspecial('average',[5,5]);

imgOrt = imfilter(imgDou,hOrt,'replicate');
imgSap = imnoise(imgGri,'salt & pepper', 0.8);
imgMed = medfilt2(imgSap);
figure;
subplot(2,2,1); imshow(imgGri); title('Orijinal Resim');
subplot(2,2,2); imshow(imgOrt); title('Ortalama filtresi');
subplot(2,2,3); imshow(imgSap); title('Tuz ve biber gürültüsü');
subplot(2,2,4); imshow(imgMed); title('Gürültülü resime Median filtresi');

%5x5 average
d=imnoise(J1,'salt & pepper');
t=im2double(d);
a=fspecial ('average');
b=fspecial ('average', [5,5]);
tt= filter2(a, t);
tt1= filter2(b, t);
figure
subplot(2,2,1),imshow(J1),title('Orijinal');
subplot(2,2,2),imshow(d),title('Salt');
subplot(2,2,3), imshow(tt),title('avarege');
subplot(2,2,4), imshow(tt1);title('avarege 5x5');