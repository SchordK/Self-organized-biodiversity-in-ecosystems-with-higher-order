
clear
tic
clc

N=32;

mu1=-0.1;sigma1=0.1;
mu2=-0.45;sigma2=0.40;
par.r=ones(1,N)*0.80;
par.d=0.001*ones(1,N)';
s=100;
rng(s)
par.a =normrnd(mu1,sigma1,N,N) ;
rng(s)
par.b = normrnd(mu2,sigma2,N,N,N);
rng(s)
y0=normrnd(0.2,0.0,1,N);
t0=1*1e4; 
tspan = [0:0.1:t0];
[t,y] = ode45(@(t,y) odefcn(t,y,N,par),tspan,y0);
y1=y(:,25);
% dodty1 = zeros(length(t),N);
% for i = 1:length(t)
%     dodty1(i,:) = odefcn(t(i), y(i,:)',N,par)';
% end


rng(s); 
y0 = normrnd(0.2, 0.0, 1, N); 
y0(25) = 0.20001; 
[t,y] = ode45(@(t,y) odefcn(t,y,N,par),tspan,y0);
ode0=[t,y(:,1:N)];
y2=y(:,25);
% dodty2 = zeros(length(t),N);
% for i = 1:length(t)
%     dodty2(i,:) = odefcn(t(i), y(i,:)',N,par)';
% end




y3=y1-y2;


figure
plot(t,y3,'linewidth',1);hold on
set(gca,'XScale','log')
%set(gca,'YScale','log');
xlabel('\fontname{Times New Roman}\fontsize{24}\it{t}');
ylabel('\fontname{Times New Roman}\fontsize{24}\it{DeltaN25}');
set(gca,'FontName','Times New Roman','FontSize',24,'linewidth',1.5);
axis([1,t0,-0.12,0.12]);





toc