clear
tic
clc
N=32;

mu1=-0.0;sigma1=0.0;
mu2=-0.35;sigma2=0.40;
par.r=ones(1,N)*0.8;
par.d=0.001*ones(1,N)';
 
s=5;
rng(s)
par.a =normrnd(mu1,sigma1,N,N) ;
mean(par.a(:));

rng(s)
par.b = normrnd(mu2,sigma2,N,N,N);

rng(s)
y0=normrnd(0.2,0.0,1,N);
t0=1*1e4; 
tspan = [0 t0];
[t,y] = ode45(@(t,y) odefcn(t,y,N,par),tspan,y0);

figure
plot(t,y(:,1:N),'linewidth',1);hold on
%set(gca,'XScale','log')
set(gca,'YScale','log');
%axis([1,t0,1e-4,2]);



tt=length(t);
tt0=20000;
figure;
dodt = zeros(length(t),N);
for i = 1:length(t)
    dodt(i,:) = odefcn(t(i), y(i,:)',N,par)';
end 
plot(y(tt0:tt,1:N),dodt(tt0:tt,1:N),'linewidth',1);hold on;
xlabel('\fontname{Times New Roman}\fontsize{24}\it{Ni}');
ylabel('\fontname{Times New Roman}\fontsize{24}\it{dNi/dt}');
set(gca,'FontName','Times New Roman','FontSize',24,'linewidth',1.5);


 figure;
plot(y(tt0:tt,5),dodt(tt0:tt,5),'linewidth',1);
xlabel('\fontname{Times New Roman}\fontsize{24}\it{N5}');
ylabel('\fontname{Times New Roman}\fontsize{24}\it{dN5/dt}');
set(gca,'FontName','Times New Roman','FontSize',24,'linewidth',1.5);


toc