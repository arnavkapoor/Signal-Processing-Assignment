% part a)

function myspecto(a,b,c)    

    mylen = a[size];
    windowcnt = mylen/b;    
    myspecto = zeros(b,windowcnt);
    
    

end

% part b)

[signal,fs] = audioread('message.wav');
s = spectrogram(signal,2100);
imagesc([0 1],[0 1],rot90(abs(s),2));

% part c) 
