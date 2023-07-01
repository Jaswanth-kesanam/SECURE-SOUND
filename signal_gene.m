[data,fs]=audioread('bgm.mp3')
leng = length(data)
t=(1:leng)/fs
figure
subplot(1,2,1)
plot(t,data,'b')
xlabel('Time(s)');
ylabel('amp');
title('piano signal');
axis tight;
Q = fix((data * 10^4)/156)  
cyphered_signal = mod((data*10^4),156);
subplot(1,2,2);
plot (t,cyphered_signal);
xlabel('Time(s)');
ylabel('amp');
title('Cyphered signal');
