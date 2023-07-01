%ADDING NOISE TO THE ORIGINAL SIGNAL:
noisy_signal = en_signal + rand(size(en_signal))
subplot(1,2,1)
plot(t,y)
title('audio signal')
subplot(1,2,2)
plot(t,noisy_signal)
title('Noise added')

ni = audioplayer(noisy_signal,fs)
play(ni)


% signal to noise ratio:
Signal_to_noise_ratio = abs(snr(noisy_signal,y))

% signal to noise ratio:
Signal_to_noise_ratio_output = abs(snr(de_signal,y))

%effectiveness of the noise
sss = abs(snr(noisy_signal,en_signal))

