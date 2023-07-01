Fsf = 44100;           % Sampling Frequency
Fp = 8e3;              % Passband Frequency in Hz
Fst = 8.4e3;           % stopband Frequency
Ap = 1;                % passband ribble in db
Ast = 95;              % stopband attenuation in d
df = designfilt('lowpassfir', 'PassbandFrequency', Fp, 'StopbandFrequency',...
Fst, 'passbandRipple', Ap, 'stopbandAttenuation', Ast, 'sampleRate', Fsf);
fvtool(df);
y = filter(df, org_decry_signal);
plot(t,y)
title('filtered signal')
si = audioplayer(y,fs)
play(si)