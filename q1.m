% Part a)

n = 128;
n = n-1;
sigma = 20; 
fun = @(a,b)  (1 / (2*pi*sigma*sigma)) * exp(-(a.^2 + b.^2)/(2*sigma^2));
f1(n,fun);

h = fspecial('gaussian',n,sigma);
imshow(h);

% Part b)

N = 3;

I = 'inp1.png'
myimg = imread(I);
imshow(myimg);
f2(N,myimg)

% part e
I = 'inp2.png'
myimg = imread(I);
fdomain = fftshift(fft2(myimg));
imagesc(abs(fdomain));
fdomain(92:104,112:124) = 0;
fdomain(210:222,112:124) = 0;
op = ifft2(fdomain);
opimg = uint8(abs(op));
imshow(opimg);

function medianfilter = f2(N,myimg)
    [xcor,ycor] = size(myimg);
    B = im2col(myimg,[N,N]);
    M = median(B);
    medianfilter = col2im(M,[N N],[xcor ycor]); 
    imshow(medianfilter);
end



function creategauss = f1(n,fun)
    x = -n/2:n/2;
    y = x.';
    creategauss = bsxfun(fun,x,y); 
    imshow(creategauss,[]);
end




