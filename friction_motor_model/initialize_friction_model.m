clc
clear
h = 1e-7; %仿真步长
H = 5e-2; %仿真时间
fs = 39e3;ws = 2*pi*fs;V0 = 150;A = -0.6067;B = 0.4181;a = 1;b = 1;alpha = pi/2; %A=-0.6303;B=0.8362
Mt=9.33E-03;Ct=27.3769;Kt=557612763;Fp=80;kp=4.7e7; %Ct=27.377
Mn=2.04E-02;Cn=65.3540;Kn=1.24E+09; %Cn=60.307
M=0.18;C=7;mu=0.35;mu_s=0.001;F_load=0;
phi = alpha;
Mst = M;
Cst = C;
Nst = 0;