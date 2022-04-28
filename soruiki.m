close all;clc;clear all;
I = imread('C:\Users\Casper\Desktop\images\images.png');
I1=histeq(I);
adouble=im2double(I);
s=adouble;
[r,c]=size(adouble);
katsayilog=4;
katsayipower=0.20;
for i=1:r
    for j=1:c
        s(i,j)=katsayilog*log(1+adouble(i,j));
        y(i,j)=katsayipower*adouble(i,j)^5;
    end
end

img2=255-I;

figure
subplot(2,2,1), imshow(I), title('Resmin Orijinali');
subplot(2,2,2), imhist(I), title('Resmin Orijinal Histogram�');

subplot(2,2,3), imshow(I1), title('Histogram E�itlenen Resim');
subplot(2,2,4), imhist(I1), title('Histogram E�itlenen Resim Histogram�');

figure
subplot(1,2,1), imshow(I), title('Resmin Orijinali');
subplot(1,2,2), imshow(img2), title('Resmin Negatifi');

%g=im2uint8(mat2gray(log(1+double(I))));
%subplot(5,2,6),imshow(g); title('Histogram E�itlenmi� Resmin Negatifinin Logaritma D�n���m�')

figure
subplot(1,2,1), imshow(adouble), title('Resmin Orijinali');
subplot(1,2,2), imshow(s), title('Resmin Logaritma D�n���m�');

figure
subplot(1,2,1), imshow(adouble), title('Resmin Orijinali');
subplot(1,2,2), imshow(y), title('Resmin Gamma D�n���m�');


%birbiri �zerine uygulama
figure
subplot(5,2,1), imshow(I), title('Resmin Orijinali');
subplot(5,2,2), imhist(I), title('Resmin Orijinal Histogram�');

subplot(5,2,3), imshow(I1), title('Histogram E�itlenen Resim');
subplot(5,2,4), imhist(I1), title('Histogram E�itlenen Resim Histogram�');

img2=255-I1;
subplot(5,2,5), imshow(img2), title('Histogram E�itlenmi� Resmin Negatifi');

g=im2uint8(mat2gray(log(1+double(img2))));
subplot(5,2,7);
imshow(g); 
title('Histogram E�itlenmi� Resmin Negatifinin Logaritma D�n���m�')

%y=g;
gama = imadjust(y, [], [], 5.0);
%adouble=im2double(I);
%[r,c]=size(adouble);
%katsayipower=0.3;
%for i=1:r
    %for j=1:c
    %    y(i,j)=katsayipower*adouble(i,j)^5;
    %end
%end
subplot(5,2,9), imshow(y), title('Histogram E�itlenmi� Resmin Negatifinin Logaritma D�n���m�n�n Gamma D�n���m�');
