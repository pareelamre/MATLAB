clc, clear all , close all;
 
% Digital Filter specification
wp = 0.2 * pi;
ws = 0.3 * pi;
rp = 1;
rs = 20;
 
% Analog design
T = 1; % assumed
wa_p = wp/T;
wa_s = ws/T;
 
% Butterworth filter design
[Nb, wcb] = buttord(wa_p,wa_s, rp, rs, 's');
[bb_s,ab_s] = butter(Nb, wcb, 's');
disp('For Butterworth, the order and cut off frequency are '),
disp( Nb),disp(wcb);
[Hb,wb] = freqs(bb_s,ab_s); % Analog freq. response
 
% Transformation from analog to digital
[bb_z, ab_z] = impinvar(bb_s,ab_s,1/T);
[Hbd, wbd] = freqz(bb_z,ab_z); % Digital freq. response
figure(1); plot(wbd/pi, 20 * log10(abs(Hbd))),grid on;
ylabel('Magnitude in dB' );
xlabel('Frequency in pi units');

% Chebyshev Type-I filter design
[Nb, wcb] = cheb1ord(wa_p, wa_s, rp, rs, 's');
[bb_s,ab_s] = cheby1(Nb, rp, wcb, 's');
disp('For Chebyshev Type-I, the order and cut off frequency are '),
disp( Nb), disp(wcb);
[Hb,wb] = freqs(bb_s, ab_s); % Analog freq. response

% Transformation from analog to digital
[bb_z, ab_z] = impinvar(bb_s, ab_s, 1/T);
[Hbd, wbd] = freqz(bb_z, ab_z); % Digital freq. response
figure(2),plot(wbd/pi, 20 * log10(abs(Hbd))), grid on;
ylabel('Magnitude in dB' );
xlabel('Frequency in pi units');

% Chebyshev Type-II filter design
[Nb, wcb] = cheb2ord(wa_p, wa_s, rp, rs, 's');
[bb_s,ab_s] = cheby2(Nb, rs, wcb, 's');
disp('For Chebyshev Type-II, the order and cut off frequency are '),
disp(Nb), disp(wcb);
[Hb,wb] = freqs(bb_s, ab_s); % Analog freq. response
 
% Transformation from analog to digital
[bb_z, ab_z] = impinvar(bb_s, ab_s, 1/T);
[Hbd, wbd] = freqz(bb_z, ab_z); % Digital freq. response
figure(3),plot(wbd/pi, 20 * log10(abs(Hbd))), grid on;
ylabel('Magnitude in dB' );
xlabel('Frequency in pi units');

% Elliptic filter design
[Nb, wcb] = ellipord(wa_p, wa_s, rp, rs, 's');
[bb_s,ab_s] = ellip(Nb, rp, rs, wcb, 's');
disp('For Elliptic, the order and cut off frequency are '),
disp( Nb), disp(wcb);
[Hb,wb] = freqs(bb_s, ab_s); % Analog freq. response
 
% Transformation from analog to digital
[bb_z, ab_z] = impinvar(bb_s, ab_s, 1/T);
[Hbd, wbd] = freqz(bb_z, ab_z); % Digital freq. response
figure(4),plot(wbd/pi, 20 * log10(abs(Hbd))), grid on;
ylabel('Magnitude in dB' );
xlabel('Frequency in pi units');


