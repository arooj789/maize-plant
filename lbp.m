clear all
close all
clc
imds=imageDatastore('E:\maize plants','IncludeSubfolders',1, 'LabelSource','foldernames');
%imds=imageDatastore('E:\maize plants');
for i=1:size(imds.Files,1)
I=imread(imds.Files{i});
    if size(I,3) == 1
        F(i,:)=extractLBPFeatures(I);
    elseif size(I,3) == 3
        F(i,:)=extractLBPFeatures(rgb2gray(I));
    
    end
