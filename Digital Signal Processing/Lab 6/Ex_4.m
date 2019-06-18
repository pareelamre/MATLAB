clc, close all;
% Digital Filter specification
wp = 0.2*pi;
ws = 0.3*pi;
rp = 1;
rs = 15;
% Analog design
T = 1; % assumed
wa_p = wp/T;
wa_s = ws/T;
[Nb, wcb] = cheb1ord(wa_p,wa_s,rp,rs,'s'); %Getting the order N and the 3dB cut-off freq
[bb_s, ab_s] = cheby1(Nb,rp,wcb,'s'); %Getting the numerator & denominator polynomial coeffs
disp('For Chebychev-1, the order and cut off frequency are '),
disp( Nb),disp(wcb);
[bb_z, ab_z] = bilinear(bb_s, ab_s, 1/T);
[Hbd, wbd] = freqz(bb_z,ab_z); % Digital freq. response
figure(1); plot(wbd/pi,20*log10(abs(Hbd))),title('Chebychev-1'),grid on;
ylabel('Magnitude in dB' ) ;
xlabel('Frequency in pi units');

[Nb, wcb] = cheb2ord(wa_p,wa_s,rp,rs,'s'); %Getting the order N and the 3dB cut-off freq
[bb_s, ab_s] = cheby2(Nb,rs,wcb,'s'); %Getting the numerator & denominator polynomial coeffs
disp('For Chebychev-2, the order and cut off frequency are '),
disp( Nb),disp(wcb);
% Transformation from analog to digital
[bb_z, ab_z] = bilinear(bb_s, ab_s, 1/T);
[Hbd, wbd] = freqz(bb_z,ab_z); % Digital freq. response
figure(2); plot(wbd/pi,20*log10(abs(Hbd))),title('Chebychev-2'),grid on;
ylabel('Magnitude in dB' ) ;
xlabel('Frequency in pi units');

[Nb, wcb] = ellipord(wa_p,wa_s,rp,rs,'s'); %Getting the order N and the 3dB cut-off freq
[bb_s, ab_s] = ellip(Nb,rp,rs,wcb,'s'); %Getting the numerator & denominator polynomial coeff
disp('For Elliptic, the order and cut off frequency are '),
disp( Nb),disp(wcb);
% Transformation from analog to digital
[bb_z, ab_z] = bilinear(bb_s, ab_s, 1/T);
[Hbd, wbd] = freqz(bb_z,ab_z); % Digital freq. response
figure(3); plot(wbd/pi,20*log10(abs(Hbd))),title('Elliptic'),grid on;
ylabel('Magnitude in dB' ) ;
xlabel('Frequency in pi units');