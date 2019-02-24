[msg,Fs] = audioread('signal_0.wav');
subplot(2, 2, 1);
plot(msg);
% sound(msg,Fs);
subplot(2, 2, 2);
msg(abs(msg)>0.85)=0;
plot(msg);



cleanedop = smoothdata(msg,"movmean");

subplot(2,2,3);
plot(cleanedop);
sound(cleanedop,Fs);

