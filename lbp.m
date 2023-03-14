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
% show  the progress
display(['progress' num2str(i/size(imds.Files,1)*100) '%'])
 
end
%putting label at the end of features
    F(:,end+1)=imds.Labels

% training SVM
    svmmdl=fitcsvm(F,imds.Labels);

%traing knn
    knnmdl=fitcknn(F,imds.Labels);

% input=imread(imds.Files{100});
% x=extractLBPFeatures(rgb2gray(input));
% prediction=predict(svmmdl,x);
