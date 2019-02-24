
X = meshgrid(1:1024);
myip = X;
N = 1024;

tic
fftop1 = recurse(X)';
fftop2 = recurse(fftop1)'; 
toc

tic
 fft2(myip);
toc

tic
dftop1 = discrete(X)';
dftop2 = discrete(dftop1)';
toc

% disp(fftop2);
% disp(dftop2);
% disp(fft2(X));

function F = recurse(a)
[~,n] = size(a);  
if (n == 1)
  F = a;
else
  feve = a(:,1:2:n);
  fodd = a(:,2:2:n);
  
  x1 = recurse(feve);
  x2 = recurse(fodd);

  m = n/2;
  mat = exp(-2*pi*1i.*[0:1:m-1]/n);
  
  f1 = x1 + mat.*x2;
  f2 = x1 - mat.*x2;
  F = [f1 f2];
end
end

function D = discrete(a)
[~,n] = size(a);
rows = (0:1:n-1);
cols = (0:1:n-1)';
mat = exp(-1i*cols*rows*2*pi/n);
D = mat*a;
end












