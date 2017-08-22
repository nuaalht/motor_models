
function xx=motor(t,x)
%--------------------------------------------------------参数
fs=39e3;ws=2*pi*fs;V0=100;A=-0.6067;B=0.4181;a=1;b=2;alpha=pi/2;%A=-0.6303;B=0.8362
Mt=9.33E-03;Ct=27.3769;Kt=557612763;Fp=50;kp=4.7e7;%Ct=27.377
Mn=2.04E-02;Cn=92.5010;Kn=1.24E+09;%Cn=60.307
M=0.18;C=7;mu=0.35;mu_s=0.001;F_load=2;
%----------------Fn为摩擦材料受到的正压力
F=Fp+kp*x(1);
if Fp+kp*(x(1)-1.0128e-6)>0
    Fn=F;
else
    Fn=0;
end
%---------------Ft为滑块受到的切向力,Ff为滑块与导轨之间的摩擦力
v_rel=x(4)-x(6);
Ft=sign(v_rel)*mu*Fn;
Ff=sign(-x(6))*mu_s*(Fn+9.8*M); 
%--------------------------------------equations
xx=[x(2);(-Cn*x(2)-Kn*x(1)+A*V0*sin(ws*t)+a*Fn)/Mn;
    x(4);(-Ct*x(4)-Kt*x(3)+B*V0*sin(ws*t+alpha)+b*Ft)/Mt;
    x(6);(-C*x(6)+Ft+Ff-F_load)/M];