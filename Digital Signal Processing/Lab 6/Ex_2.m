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
[Nb1, wcb1] = cheb1ord(wa_p,wa_s,rp,rs,'s'); %Getting the order N and the 3dB cut-off freq
[bb_s, ab_s] = cheby1(Nb1,rp,wcb1,'s'); %Getting the numerator & denominator polynomial coeffs
disp('For Chebychev-1, the order and cut off frequency are '),
disp( Nb1),disp(wcb1);
[bb_z1, ab_z1] = impinvar(bb_s,ab_s,1/T);
[Hbd1, wbd1] = freqz(bb_z1,ab_z1); % Digital freq. response
figure(1); plot(wbd1/pi,20*log10(abs(Hbd1))),title('Chebychev-1'),grid on;
ylabel('Magnitude in dB' ) ;
xlabel('Frequency in pi units');

[Nb2, wcb2] = cheb2ord(wa_p,wa_s,rp,rs,'s'); %Getting the order N and the 3dB cut-off freq
[bb_s, ab_s] = cheby2(Nb2,rs,wcb2,'s'); %Getting the numerator & denominator polynomial coeffs
disp('For Chebychev-2, the order and cut off frequency are '),
disp( Nb2),disp(wcb2);
% Transformation from analog to digital
[bb_z2, ab_z2] = impinvar(bb_s,ab_s,1/T);
[Hbd2, wbd2] = freqz(bb_z2,ab_z2); % Digital freq. response
figure(2); plot(wbd2/pi,20*log10(abs(Hbd2))),title('Chebychev-2'),grid on;
ylabel('Magnitude in dB' ) ;
xlabel('Frequency in pi units');

[Nb3, wcb3] = ellipord(wa_p,wa_s,rp,rs,'s'); %Getting the order N and the 3dB cut-off freq
[bb_s, ab_s] = ellip(Nb3,rp,rs,wcb3,'s'); %Getting the numerator & denominator polynomial coeff
disp('For Elliptic, the order and cut off frequency are '),
disp( Nb3),disp(wcb3);
% Transformation from analog to digital
[bb_z3, ab_z3] = impinvar(bb_s,ab_s,1/T);
[Hbd3, wbd3] = freqz(bb_z3,ab_z3); % Digital freq. response
figure(3); plot(wbd3/pi,20*log10(abs(Hbd3))),title('Elliptic'),grid on;
ylabel('Magnitude in dB' ) ;
xlabel('Frequency in pi units');