function Plot_Spectrum(sig,fs)

[signal,f] = pwelch(sig,2048,1024,2048,fs);
signal = fftshift(signal/max(abs(signal)));
F_new = linspace(-fs/2,fs/2,length(signal));
plot(F_new/1e3,(20*log10(signal)));
xlabel('Frequency in (KHz)')
ylabel('Normalized Magnitude (dB)')
grid on;

end