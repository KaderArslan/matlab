img=imread('C:\Users\Casper\Desktop\images\lena512color.tiff');

figure;
siyahbeyaz=rgb2gray(img);
A=im2bw(siyahbeyaz);
imshow(A);
title('Siyah-Beyaz');

figure;
boyutlandir=imresize(siyahbeyaz,0.5);
imshow(boyutlandir);
title('0.5 Oran�nda Boyutland�rma');

figure;
dondur=imrotate(siyahbeyaz,60,'nearest');
imshow(dondur);
title('60 Derece D�nd�rme');

figure;
mirror_image = flip(siyahbeyaz,2);
imshow(mirror_image);
title('Yatay Ters �evirme (Aynalama)');

