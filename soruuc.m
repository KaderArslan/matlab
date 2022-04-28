clc,clear all,close all;

moon=imread('C:\Users\Casper\Desktop\images\his.png');
G=rgb2gray(moon);
w4=fspecial('laplacian',0);
f=im2double(G);
g4=imfilter(f,w4,'replicate');
figure
subplot(2,2,1), imshow(G), title('Resmin Orijinali');
subplot(2,2,2), imshow(g4,[]), title('Laplacian Filtresi');
w4=fspecial('laplacian',0);
w8 = [1 1 1; 1 -8 1; 1 1 1];
f=im2double(G); 
g4=f-imfilter(f,w4,'replicate');
g8=f-imfilter(f,w8,'replicate');
subplot(2,2,3), imshow(g4);title('f-imfilter(f,w4,''replicate'')')
subplot(2,2,4), imshow(g8);title('f-imfilter(f,w8,''replicate'')')



A=imread('C:\Users\Casper\Desktop\images\his.png'); 
B=rgb2gray(A); 
C=double(B); 
for i=1:size(C,1)-2 
   for j=1:size(C,2)-2 
   %Sobel mask for x-direction   
   Gx=((2*C(i+1,j+1)+C(i,j+2)+C(i+2,j+2)-(2*C(i,j+1)+C(i,j)+C(i,j+2)))); 
   %Sobel mask for y-direction
   Gy=((2*C(i+1,j+2)+C(i,j+2)+C(i+2,j+2))-(2*C(i+1,j)+C(i,j)+C(i+2,j))); 
%The gradient of the image 
%B(i,j)=abs(Gx)+abs(Gy); 
B(i,j)=sqrt(Gx.^2+Gy.^2);
end
end 
figure
subplot(1,2,1), imshow(G); title('Resmin Orijinali');
subplot(1,2,2), imshow(B); title('Sobel Filtresi');


a=imread('C:\Users\Casper\Desktop\images\his.png');
g = rgb2gray(a);
s13=edge(g,'prewitt','vertical');
s14=edge(g,'prewitt','horizontal');
figure
subplot(2,2,1.5), imshow(g),   title('Resmin Orijinali')
subplot(2,2,3), imshow(s13), title('Kenar vertc Prewitt')
subplot(2,2,4), imshow(s14), title('Kenar horz Prewitt')