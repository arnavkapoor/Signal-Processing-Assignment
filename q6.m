I = imread('cameraman.tif');
subplot(1,3,1);
imshow(I);

subplot(1,3,2);
imshow(mat2gray(abs(fft2(fft2(I)))));

ffton = fft2(I);
ffton = rot90(ffton,2);
myop =  fft2(ffton);

answer = mat2gray(abs(myop));
subplot(1,3,3);
imshow(mat2gray(abs(myop)));


% reason
A = dftmtx(6)*dftmtx(6);
disp(A);