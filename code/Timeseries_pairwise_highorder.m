clear
tic
clc

N=32;
par.r=ones(1,N)*0.3;%
par.d=0.001*ones(1,N)';
s=90;
rng(s)
y0=normrnd(0.1,0.0,1,N);
t0=1*1e4; 
tspan = [0 t0];

M1=[0.02:0.02:1];
M2=[0.02:0.02:1];
M=zeros(length(M1),length(M2));

for i=10%1:length(M1)
     i
     mu1=-M1(i);
     
      for j=10%1:length(M2)
          j
        sigma1=M2(j);%  
rng(s)
par.a =normrnd(mu1,sigma1,N,N) ;
mu2=-0.0;sigma2=0.0;
rng(s)
par.b = normrnd(mu2,sigma2,N,N,N);
[t,y] = ode45(@(t,y) odefcn(t,y,N,par),tspan,y0);

figure
plot(t,y(:,1:N),'linewidth',1);hold on
xlabel('\fontname{Times New Roman}\fontsize{24}\it{t}');
ylabel('Species abundance');
set(gca,'FontName','Times New Roman','FontSize',20,'linewidth',1.5);
title('Pairwise','FontSize',16)
set(gca,'XScale','log','FontSize',16)
set(gca,'YScale','log','FontSize',16);
axis([1,t0,1e-17,1e15]);
      end

end


for i=10%1:length(M1)
     i
     mu1=-M1(i);
     
      for j=10%1:length(M2)
          j
        sigma1=M2(j);%  
rng(s)
par.a =normrnd(mu1,sigma1,N,N) ;
mu2=-0.3;sigma2=0.3;
rng(s)
par.b = normrnd(mu2,sigma2,N,N,N);
[t,y] = ode45(@(t,y) odefcn(t,y,N,par),tspan,y0);

figure
plot(t,y(:,1:N),'linewidth',1);hold on
xlabel('\fontname{Times New Roman}\fontsize{24}\it{t}');
ylabel('Species abundance');
set(gca,'FontName','Times New Roman','FontSize',20,'linewidth',1.5);

title('Pairwise & higher order interaction','FontSize',16)
set(gca,'XScale','log','FontSize',16)
set(gca,'YScale','log','FontSize',16);
      end

end




for i=30%1:length(M1)
     i
     mu1=-M1(i);
     
      for j=40%1:length(M2)
          j
        sigma1=M2(j);%  
rng(s)
par.a =normrnd(mu1,sigma1,N,N) ;
mu2=-0.0;sigma2=0.0;
rng(s)
par.b = normrnd(mu2,sigma2,N,N,N);
[t,y] = ode45(@(t,y) odefcn(t,y,N,par),tspan,y0);

figure
plot(t,y(:,1:N),'linewidth',1);hold on
xlabel('\fontname{Times New Roman}\fontsize{24}\it{t}');
ylabel('Species abundance');
set(gca,'FontName','Times New Roman','FontSize',20,'linewidth',1.5);
title('Pairwise','FontSize',16)
set(gca,'XScale','log','FontSize',16)
set(gca,'YScale','log','FontSize',16);
axis([1,t0,1e-17,1e15]);
      end

end


for i=30%1:length(M1)
     i
     mu1=-M1(i);
     
      for j=40%1:length(M2)
          j
        sigma1=M2(j);%  
rng(s)
par.a =normrnd(mu1,sigma1,N,N) ;
mu2=-0.3;sigma2=0.3;
rng(s)
par.b = normrnd(mu2,sigma2,N,N,N);
[t,y] = ode45(@(t,y) odefcn(t,y,N,par),tspan,y0);

figure
plot(t,y(:,1:N),'linewidth',1);hold on
xlabel('\fontname{Times New Roman}\fontsize{24}\it{t}');
ylabel('Species abundance');
set(gca,'FontName','Times New Roman','FontSize',20,'linewidth',1.5);

title('Pairwise & higher order interaction','FontSize',16)
set(gca,'XScale','log','FontSize',16)
set(gca,'YScale','log','FontSize',16);
      end

end






toc