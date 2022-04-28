img = imread('C:\Users\Casper\Desktop\images\mezun.png');
img=rgb2gray(img); %resmin gri hali
img1024=img(1:8:end,1:8:end); %resmin 1/8 oran�nda �rneklemesi
img2=255-img1024;  %negatifi

figure
subplot(2,2,1);
imshow(img);
title('Orijinal Resim');

subplot(2,2,2), imshow(img1024), title('1/8 Oran�nda Alt �rneklenmi� Resim(1024x1024->128x128)');

subplot(2,2,3), imshow(img2), title('�rneklenmi� Resmin Negatifi');

subplot(2,2,4);
h=imshow(img2); 
set(h,'AlphaData',0.6) %transparent i�lemi
title('�rneklenmi� Resmin Negatifinin Transparenti');

figure
subplot(1,2,1);
imshow(img);
title('Orijinal Resim');
subplot(1,2,2);
img1024=img(1:8:end,1:8:end);
imshow(img1024);
title('Orijinal Resim i�in �rnekleme');


figure
subplot(1,2,1);
imshow(img);
title('Orijinal Resim');
subplot(1,2,2);
img2=255-img;
imshow(img2);
title('Orijinal Resim i�in Negatiflik');

figure
subplot(1,2,1);
imshow(img);
title('Orijinal Resim');
subplot(1,2,2);
t=imshow(img);
set(t,'AlphaData',0.6);
title('Orijinal Resim i�in Transparent');

