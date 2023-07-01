%ENCRYPTION
en_signal = cyphered_signal * k
subplot(1,2,1)
plot(t,en_signal)
xlabel ('time')
ylabel('amplitude')
title('ENCRYPTED SIGNAL')

%DECRYPTION
de_signal = en_signal / k % without decyphering
subplot(1,2,2)
plot(t,de_signal)
xlabel ('time')
ylabel('amplitude')
title('DECRYPTED SIGNAL BEFORE DECYPHERING')

% after decyphering
org_decry_signal = (Q*156 + de_signal) / (10^4)
figure(3)
plot(t,org_decry_signal)
xlabel ('time')
ylabel('amplitude')
title('DECRYPTED SIGNAL AFTER DECYPHERING')
c = audioplayer(org_decry_signal,fs)
play(c)

