[msg,Fs] = audioread('tone.wav');
wlen = size(msg)/8;
wlen = wlen(1);
s = spectrogram(msg,wlen,0);
s = abs(s);
[msizr,~] = size(s);

scaling = (Fs/2)/msizr;

[val,ind] = max(s);
s(bsxfun(@eq, s, val)) = -1;
[val2,ind2] = max(s);

ind = ind*scaling;
ind2 = ind2*scaling;

find = ind+ind2;

mdigs = [];

dirc = './q3/';
myfil = dir(fullfile(dirc,'*.ogg'));

for k = 1:length(myfil)
  base = myfil(k).name;
  fulln = fullfile(dirc, base);
  
  msg0 = audioread(fulln);
  s0 = fft(msg0);
  s0 = abs(s0);
  
  % 
  [valz,indz] = max(s0);
  [valz2,indz2] = max(s0(s0<max(s0)));
  nval = indz + indz2;
  mdigs(k) = nval;
end

[val,ind] = min(abs(bsxfun(@minus,mdigs',find)));
decoded = ind - 1;
decoded;