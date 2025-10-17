clear
tic
clc

N=6;
mu1=-1.0;sigma1=0.1;
mu2=-5.0;sigma2=0.15;
par.r=ones(1,N)*5;
par.d=0.001*ones(1,N)';
s=3;
rng(s)
par.a =normrnd(mu1,sigma1,N,N) ;
rng(s)
par.b = normrnd(mu2,sigma2,N,N,N);
rng(s)
y0=normrnd(0.2,0.0,1,N);
t0=1*1e4; 
tspan = [0 t0];
[t,y] = ode45(@(t,y) odefcn(t,y,N,par),tspan,y0);


mm=y(end,1:N);
%save mm
a=sort(mm,'descend');
a1=100*a./sum(a);
po=a./sum(a);
t1=1:length(a);


tcorlab6=[1	2	3	4	5	6];
corlab6=[0.42424 0.36364 0.09091 0.06061 0.0303	0.0303];%Relative species abundance
%Winkler DW, Billerman SM, Lovette IJ. Fairywrens (Maluridae), version 1.0. In: Birds of the World (Billerman SM, Keeney BK, Rodewald PG, Schulenberg TS, Editors). Cornell Lab of Ornithology 2020; Ithaca, NY, USA

%Shannon diversity
Hcorlab6=-sum(corlab6.*log2(corlab6))%Hdata1=  1.9208
Ho=-sum(po.*log2(po))%Ho= 1.7762

%K-S test
[h1,p1,k1] = kstest2(corlab6,po);% 0.8096
p1

figure
hold on
plot(t1,a1,'.k','MarkerSize',20);
plot(tcorlab6,corlab6.*100,'.r','MarkerSize',20);
legend('model','data')
%set(gca,'XScale','log')
set(gca,'YScale','log')
xlabel('\fontname{Aria}\fontsize{24}{Rank}');
ylabel('\fontname{Aria}\fontsize{20}{Relative species abundance}');
%axis([-1,37,0.03,1*1e2]);

figure
hold on
plot(1e-2:100,1e-2:100,'k','linewidth',1);
plot(corlab6.*100,a1,'.k','MarkerSize',20);
set(gca,'XScale','log')
set(gca,'YScale','log')
xlabel('\fontname{Aria}\fontsize{24}{Observed}');
ylabel('\fontname{Aria}\fontsize{20}{Simulated}');
%axis([-1,37,0.03,1*1e2]);


figure
plot(t,y(:,1:N),'linewidth',1);hold on
set(gca,'XScale','log')
set(gca,'YScale','log');
xlabel('\fontname{Aria}\fontsize{24}{Time}');
ylabel('\fontname{Aria}\fontsize{20}{Species abundance}');
%axis([1,t0,1e-3,1e0]);









toc