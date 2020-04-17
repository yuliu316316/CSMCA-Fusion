clear all
close all
clc

addpath(genpath('SparseCode'));
addpath(genpath('Util'));

load('dictionary/Dc_8_8_32.mat')
load('dictionary/Dt_8_8_32.mat')

img1=imread('sourceimages/source1.tif');
img2=imread('sourceimages/source2.tif');
figure,imshow(img1);
figure,imshow(img2);

imgf=CSMCA_Fusion(img1,img2,Dc,Dt);

figure;imshow(imgf);
imwrite(imgf,'Results/fused_csmca.tif');




