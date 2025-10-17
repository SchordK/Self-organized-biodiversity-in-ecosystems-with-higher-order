clear
tic
clc

N=32;
mu1=-0.1;sigma1=0.1;
mu2=-0.45;sigma2=0.4;
par.d=0.001*ones(1,N)';
s=100; 
rng(s)
par.a =normrnd(mu1,sigma1,N,N) ;
rng(s)
par.b = normrnd(mu2,sigma2,N,N,N);
rng(s)
y0=normrnd(0.2,0.0,1,N);
t0=1*1e5; 
tspan = [0 t0];


ra=[0.28:0.001:1];
rn=length(ra);

databifurcation1=zeros(1,2*rn);
databifurcation2=zeros(1,2*rn);
databifurcation3=zeros(1,2*rn);
databifurcation4=zeros(1,2*rn);
databifurcation5=zeros(1,2*rn);
databifurcation6=zeros(1,2*rn);
databifurcation7=zeros(1,2*rn);
databifurcation8=zeros(1,2*rn);
databifurcation9=zeros(1,2*rn);
databifurcation10=zeros(1,2*rn);
databifurcation11=zeros(1,2*rn);
databifurcation12=zeros(1,2*rn);
databifurcation13=zeros(1,2*rn);
databifurcation14=zeros(1,2*rn);
databifurcation15=zeros(1,2*rn);
databifurcation16=zeros(1,2*rn);
databifurcation17=zeros(1,2*rn);
databifurcation18=zeros(1,2*rn);
databifurcation19=zeros(1,2*rn);
databifurcation20=zeros(1,2*rn);
databifurcation21=zeros(1,2*rn);
databifurcation22=zeros(1,2*rn);
databifurcation23=zeros(1,2*rn);
databifurcation24=zeros(1,2*rn);
databifurcation25=zeros(1,2*rn);
databifurcation26=zeros(1,2*rn);
databifurcation27=zeros(1,2*rn);
databifurcation28=zeros(1,2*rn);
databifurcation29=zeros(1,2*rn);
databifurcation30=zeros(1,2*rn);
databifurcation31=zeros(1,2*rn);
databifurcation32=zeros(1,2*rn);




%figure
for i=1:length(ra)
    i
    r=ra(i);

par.r=ones(1,N)*r;

[t,y] = ode45(@(t,y) odefcn(t,y,N,par),tspan,y0);


na=round(0.97*length(y(:,1)));

xx1=y(na:length(y(:,1)),1);
nx=length(xx1);
pkx1=[];
for j=2:(nx-1)
    if xx1(j-1)<xx1(j)&&xx1(j)>xx1(j+1)
        pkx1=[xx1(j)   pkx1];

    end
end

nm=length(pkx1);
for k=1:nm
    %plot(r,pkx1(k),'.b','markersize',5);hold on

databifurcation1(k,2*i-1)=r;
databifurcation1(k,2*i)=pkx1(k);
end
% xlabel('\fontname{Times New Roman}\fontsize{24}\it{r}');
% ylabel('\fontname{Times New Roman}\fontsize{24}{Max(\it{N_1})}');
% set(gca,'FontName','Times New Roman','FontSize',24,'linewidth',1.5);
% %set(gca,'XScale','log')
% set(gca,'YScale','log')
% %axis([20,40,2,5]);



xx2=y(na:length(y(:,1)),2);
nx=length(xx2);
pkx2=[];
for j=2:(nx-1)
    if xx2(j-1)<xx2(j)&&xx2(j)>xx2(j+1)
        pkx2=[xx2(j)   pkx2];

    end
end

nm=length(pkx2);
for k=1:nm
    %plot(r,pkx2(k),'.b','markersize',3);hold on

databifurcation2(k,2*i-1)=r;
databifurcation2(k,2*i)=pkx2(k);
end
% xlabel('\fontname{Times New Roman}\fontsize{24}\it{r}');
% ylabel('\fontname{Times New Roman}\fontsize{24}{Max(\it{N_2})}');
% set(gca,'FontName','Times New Roman','FontSize',24,'linewidth',1.5);
% %set(gca,'XScale','log')
% set(gca,'YScale','log')
% %axis([20,40,2,5]);


xx3=y(na:length(y(:,1)),3);
nx=length(xx3);
pkx3=[];
for j=2:(nx-1)
    if xx3(j-1)<xx3(j)&&xx3(j)>xx3(j+1)
        pkx3=[xx3(j)   pkx3];

    end
end

nm=length(pkx3);
for k=1:nm
    %plot(r,pkx3(k),'.b','markersize',3);hold on

databifurcation3(k,2*i-1)=r;
databifurcation3(k,2*i)=pkx3(k);
end
% xlabel('\fontname{Times New Roman}\fontsize{24}\it{r}');
% ylabel('\fontname{Times New Roman}\fontsize{24}{Max(\it{N_3})}');
% set(gca,'FontName','Times New Roman','FontSize',24,'linewidth',1.5);
% %%set(gca,'XScale','log')
% set(gca,'YScale','log')
% %axis([20,40,2,5]);


xx4=y(na:length(y(:,1)),4);
nx=length(xx4);
pkx4=[];
for j=2:(nx-1)
    if xx4(j-1)<xx4(j)&&xx4(j)>xx4(j+1)
        pkx4=[xx4(j)   pkx4];

    end
end

nm=length(pkx4);
for k=1:nm
    %plot(r,pkx4(k),'.b','markersize',3);hold on

databifurcation4(k,2*i-1)=r;
databifurcation4(k,2*i)=pkx4(k);
end
% xlabel('\fontname{Times New Roman}\fontsize{24}\it{r}');
% ylabel('\fontname{Times New Roman}\fontsize{24}{Max(\it{N_4})}');
% set(gca,'FontName','Times New Roman','FontSize',24,'linewidth',1.5);
% %set(gca,'XScale','log')
% set(gca,'YScale','log')
% %axis([20,40,2,5]);


xx5=y(na:length(y(:,1)), 5);
nx=length(xx5);
pkx5=[];
for j=2:(nx-1)
    if xx5(j-1)<xx5(j)&&xx5(j)>xx5(j+1)
        pkx5=[xx5(j)   pkx5];

    end
end

nm=length(pkx5);
for k=1:nm
    %plot(r,pkx5(k),'.b','markersize',3);hold on

databifurcation5(k,2*i-1)=r;
databifurcation5(k,2*i)=pkx5(k);
end
% xlabel('\fontname{Times New Roman}\fontsize{24}\it{r}');
% ylabel('\fontname{Times New Roman}\fontsize{24}{Max(\it{N_5})}');
% set(gca,'FontName','Times New Roman','FontSize',24,'linewidth',1.5);
% %set(gca,'XScale','log')
% set(gca,'YScale','log')
% %axis([20,40,2,5]);


xx6=y(na:length(y(:,1)),6);
nx=length(xx6);
pkx6=[];
for j=2:(nx-1)
    if xx6(j-1)<xx6(j)&&xx6(j)>xx6(j+1)
        pkx6=[xx6(j)   pkx6];

    end
end

nm=length(pkx6);
for k=1:nm
    %plot(r,pkx6(k),'.b','markersize',3);hold on

databifurcation6(k,2*i-1)=r;
databifurcation6(k,2*i)=pkx6(k);
end
% xlabel('\fontname{Times New Roman}\fontsize{24}\it{r}');
% ylabel('\fontname{Times New Roman}\fontsize{24}{Max(\it{N_6})}');
% set(gca,'FontName','Times New Roman','FontSize',24,'linewidth',1.5);
% %set(gca,'XScale','log')
% set(gca,'YScale','log')
% %axis([20,40,2,5]);


xx7=y(na:length(y(:,1)),7);
nx=length(xx7);
pkx7=[];
for j=2:(nx-1)
    if xx7(j-1)<xx7(j)&&xx7(j)>xx7(j+1)
        pkx7=[xx7(j)   pkx7];

    end
end

nm=length(pkx7);
for k=1:nm
    %plot(r,pkx7(k),'.b','markersize',3);hold on

databifurcation7(k,2*i-1)=r;
databifurcation7(k,2*i)=pkx7(k);
end
% xlabel('\fontname{Times New Roman}\fontsize{24}\it{r}');
% ylabel('\fontname{Times New Roman}\fontsize{24}{Max(\it{N_7})}');
% set(gca,'FontName','Times New Roman','FontSize',24,'linewidth',1.5);
% %set(gca,'XScale','log')
% set(gca,'YScale','log')
% %axis([20,40,2,5]);


xx8=y(na:length(y(:,1)),8);
nx=length(xx8);
pkx8=[];
for j=2:(nx-1)
    if xx8(j-1)<xx8(j)&&xx8(j)>xx8(j+1)
        pkx8=[xx8(j)   pkx8];

    end
end

nm=length(pkx8);
for k=1:nm
    %plot(r,pkx8(k),'.b','markersize',3);hold on

databifurcation8(k,2*i-1)=r;
databifurcation8(k,2*i)=pkx8(k);
end
% xlabel('\fontname{Times New Roman}\fontsize{24}\it{r}');
% ylabel('\fontname{Times New Roman}\fontsize{24}{Max(\it{N_8})}');
% set(gca,'FontName','Times New Roman','FontSize',24,'linewidth',1.5);
% %set(gca,'XScale','log')
% set(gca,'YScale','log')
% %axis([20,40,2,5]);


xx9=y(na:length(y(:,1)),9);
nx=length(xx9);
pkx9=[];
for j=2:(nx-1)
    if xx9(j-1)<xx9(j)&&xx9(j)>xx9(j+1)
        pkx9=[xx9(j)   pkx9];

    end
end

nm=length(pkx9);
for k=1:nm
    %plot(r,pkx9(k),'.b','markersize',3);hold on

databifurcation9(k,2*i-1)=r;
databifurcation9(k,2*i)=pkx9(k);
end
% xlabel('\fontname{Times New Roman}\fontsize{24}\it{r}');
% ylabel('\fontname{Times New Roman}\fontsize{24}{Max(\it{N_9})}');
% set(gca,'FontName','Times New Roman','FontSize',24,'linewidth',1.5);
% %set(gca,'XScale','log')
% set(gca,'YScale','log')
% %axis([20,40,2,5]);



xx10=y(na:length(y(:,1)),10);
nx=length(xx10);
pkx10=[];
for j=2:(nx-1)
    if xx10(j-1)<xx10(j)&&xx10(j)>xx10(j+1)
        pkx10=[xx10(j)   pkx10];

    end
end

nm=length(pkx10);
for k=1:nm
    %plot(r,pkx10(k),'.b','markersize',3);hold on

databifurcation10(k,2*i-1)=r;
databifurcation10(k,2*i)=pkx10(k);
end
% xlabel('\fontname{Times New Roman}\fontsize{24}\it{r}');
% ylabel('\fontname{Times New Roman}\fontsize{24}{Max(\it{N_10})}');
% set(gca,'FontName','Times New Roman','FontSize',24,'linewidth',1.5);
% %set(gca,'XScale','log')
% set(gca,'YScale','log')
% %axis([20,40,2,5]);


xx11=y(na:length(y(:,1)),11);
nx=length(xx11);
pkx11=[];
for j=2:(nx-1)
    if xx11(j-1)<xx11(j)&&xx11(j)>xx11(j+1)
        pkx11=[xx11(j)   pkx11];

    end
end

nm=length(pkx11);
for k=1:nm
    %plot(r,pkx11(k),'.b','markersize',3);hold on

databifurcation11(k,2*i-1)=r;
databifurcation11(k,2*i)=pkx11(k);
end
% xlabel('\fontname{Times New Roman}\fontsize{24}\it{r}');
% ylabel('\fontname{Times New Roman}\fontsize{24}{Max(\it{N_11})}');
% set(gca,'FontName','Times New Roman','FontSize',24,'linewidth',1.5);
% %set(gca,'XScale','log')
% set(gca,'YScale','log')
% %axis([20,40,2,5]);



xx12=y(na:length(y(:,1)),12);
nx=length(xx12);
pkx12=[];
for j=2:(nx-1)
    if xx12(j-1)<xx12(j)&&xx12(j)>xx12(j+1)
        pkx12=[xx12(j)   pkx12];

    end
end

nm=length(pkx12);
for k=1:nm
    %plot(r,pkx12(k),'.b','markersize',3);hold on

databifurcation12(k,2*i-1)=r;
databifurcation12(k,2*i)=pkx12(k);
end
% xlabel('\fontname{Times New Roman}\fontsize{24}\it{r}');
% ylabel('\fontname{Times New Roman}\fontsize{24}{Max(\it{N_12})}');
% set(gca,'FontName','Times New Roman','FontSize',24,'linewidth',1.5);
% %set(gca,'XScale','log')
% set(gca,'YScale','log')
% %axis([20,40,2,5]);


xx13=y(na:length(y(:,1)),13);
nx=length(xx13);
pkx13=[];
for j=2:(nx-1)
    if xx13(j-1)<xx13(j)&&xx13(j)>xx13(j+1)
        pkx13=[xx13(j)   pkx13];

    end
end

nm=length(pkx13);
for k=1:nm
    %plot(r,pkx13(k),'.b','markersize',3);hold on

databifurcation13(k,2*i-1)=r;
databifurcation13(k,2*i)=pkx13(k);
end
% xlabel('\fontname{Times New Roman}\fontsize{24}\it{r}');
% ylabel('\fontname{Times New Roman}\fontsize{24}{Max(\it{N_13})}');
% set(gca,'FontName','Times New Roman','FontSize',24,'linewidth',1.5);
% %set(gca,'XScale','log')
% set(gca,'YScale','log')
% %axis([20,40,2,5]);


xx14=y(na:length(y(:,1)),14);
nx=length(xx14);
pkx14=[];
for j=2:(nx-1)
    if xx14(j-1)<xx14(j)&&xx14(j)>xx14(j+1)
        pkx14=[xx14(j)   pkx14];

    end
end

nm=length(pkx14);
for k=1:nm
    %plot(r,pkx14(k),'.b','markersize',3);hold on

databifurcation14(k,2*i-1)=r;
databifurcation14(k,2*i)=pkx14(k);
end
% xlabel('\fontname{Times New Roman}\fontsize{24}\it{r}');
% ylabel('\fontname{Times New Roman}\fontsize{24}{Max(\it{N_14})}');
% set(gca,'FontName','Times New Roman','FontSize',24,'linewidth',1.5);
% %set(gca,'XScale','log')
% set(gca,'YScale','log')
% %axis([20,40,2,5]);


xx15=y(na:length(y(:,1)),15);
nx=length(xx15);
pkx15=[];
for j=2:(nx-1)
    if xx15(j-1)<xx15(j)&&xx15(j)>xx15(j+1)
        pkx15=[xx15(j)   pkx15];

    end
end

nm=length(pkx15);
for k=1:nm
    %plot(r,pkx15(k),'.b','markersize',3);hold on

databifurcation15(k,2*i-1)=r;
databifurcation15(k,2*i)=pkx15(k);
end
% xlabel('\fontname{Times New Roman}\fontsize{24}\it{r}');
% ylabel('\fontname{Times New Roman}\fontsize{24}{Max(\it{N_15})}');
% set(gca,'FontName','Times New Roman','FontSize',24,'linewidth',1.5);
% %set(gca,'XScale','log')
% set(gca,'YScale','log')
% %axis([20,40,2,5]);


xx16=y(na:length(y(:,1)),16);
nx=length(xx16);
pkx16=[];
for j=2:(nx-1)
    if xx16(j-1)<xx16(j)&&xx16(j)>xx16(j+1)
        pkx16=[xx16(j)   pkx16];

    end
end

nm=length(pkx16);
for k=1:nm
    %plot(r,pkx16(k),'.b','markersize',3);hold on

databifurcation16(k,2*i-1)=r;
databifurcation16(k,2*i)=pkx16(k);
end
% xlabel('\fontname{Times New Roman}\fontsize{24}\it{r}');
% ylabel('\fontname{Times New Roman}\fontsize{24}{Max(\it{N_16})}');
% set(gca,'FontName','Times New Roman','FontSize',24,'linewidth',1.5);
% %set(gca,'XScale','log')
% set(gca,'YScale','log')
% %axis([20,40,2,5]);


xx17=y(na:length(y(:,1)),17);
nx=length(xx17);
pkx17=[];
for j=2:(nx-1)
    if xx17(j-1)<xx17(j)&&xx17(j)>xx17(j+1)
        pkx17=[xx17(j)   pkx17];

    end
end

nm=length(pkx17);
for k=1:nm
    %plot(r,pkx17(k),'.b','markersize',3);hold on

databifurcation17(k,2*i-1)=r;
databifurcation17(k,2*i)=pkx17(k);
end
% xlabel('\fontname{Times New Roman}\fontsize{24}\it{r}');
% ylabel('\fontname{Times New Roman}\fontsize{24}{Max(\it{N_17})}');
% set(gca,'FontName','Times New Roman','FontSize',24,'linewidth',1.5);
% %set(gca,'XScale','log')
% set(gca,'YScale','log')
% %axis([20,40,2,5]);


xx18=y(na:length(y(:,1)),18);
nx=length(xx18);
pkx18=[];
for j=2:(nx-1)
    if xx18(j-1)<xx18(j)&&xx18(j)>xx18(j+1)
        pkx18=[xx18(j)   pkx18];

    end
end

nm=length(pkx18);
for k=1:nm
    %plot(r,pkx18(k),'.b','markersize',3);hold on

databifurcation18(k,2*i-1)=r;
databifurcation18(k,2*i)=pkx18(k);
end
% xlabel('\fontname{Times New Roman}\fontsize{24}\it{r}');
% ylabel('\fontname{Times New Roman}\fontsize{24}{Max(\it{N_18})}');
% set(gca,'FontName','Times New Roman','FontSize',24,'linewidth',1.5);
% %set(gca,'XScale','log')
% set(gca,'YScale','log')
% %axis([20,40,2,5]);


xx19=y(na:length(y(:,1)),19);
nx=length(xx19);
pkx19=[];
for j=2:(nx-1)
    if xx19(j-1)<xx19(j)&&xx19(j)>xx19(j+1)
        pkx19=[xx19(j)   pkx19];

    end
end

nm=length(pkx19);
for k=1:nm
    %plot(r,pkx19(k),'.b','markersize',3);hold on

databifurcation19(k,2*i-1)=r;
databifurcation19(k,2*i)=pkx19(k);
end
% xlabel('\fontname{Times New Roman}\fontsize{24}\it{r}');
% ylabel('\fontname{Times New Roman}\fontsize{24}{Max(\it{N_19})}');
% set(gca,'FontName','Times New Roman','FontSize',24,'linewidth',1.5);
% %set(gca,'XScale','log')
% set(gca,'YScale','log')
% %axis([20,40,2,5]);


xx20=y(na:length(y(:,1)),20);
nx=length(xx20);
pkx20=[];
for j=2:(nx-1)
    if xx20(j-1)<xx20(j)&&xx20(j)>xx20(j+1)
        pkx20=[xx20(j)   pkx20];

    end
end

nm=length(pkx20);
for k=1:nm
    %plot(r,pkx20(k),'.b','markersize',3);hold on

databifurcation20(k,2*i-1)=r;
databifurcation20(k,2*i)=pkx20(k);
end
% xlabel('\fontname{Times New Roman}\fontsize{24}\it{r}');
% ylabel('\fontname{Times New Roman}\fontsize{24}{Max(\it{N_20})}');
% set(gca,'FontName','Times New Roman','FontSize',24,'linewidth',1.5);
% %set(gca,'XScale','log')
% set(gca,'YScale','log')
% %axis([20,40,2,5]);


xx21=y(na:length(y(:,1)),21);
nx=length(xx21);
pkx21=[];
for j=2:(nx-1)
    if xx21(j-1)<xx21(j)&&xx21(j)>xx21(j+1)
        pkx21=[xx21(j)   pkx21];

    end
end

nm=length(pkx21);
for k=1:nm
    %plot(r,pkx21(k),'.b','markersize',3);hold on

databifurcation21(k,2*i-1)=r;
databifurcation21(k,2*i)=pkx21(k);
end
% xlabel('\fontname{Times New Roman}\fontsize{24}\it{r}');
% ylabel('\fontname{Times New Roman}\fontsize{24}{Max(\it{N_21})}');
% set(gca,'FontName','Times New Roman','FontSize',24,'linewidth',1.5);
% %set(gca,'XScale','log')
% set(gca,'YScale','log')
% %axis([20,40,2,5]);


xx22=y(na:length(y(:,1)),22);
nx=length(xx22);
pkx22=[];
for j=2:(nx-1)
    if xx22(j-1)<xx22(j)&&xx22(j)>xx22(j+1)
        pkx22=[xx22(j)   pkx22];

    end
end

nm=length(pkx22);
for k=1:nm
    %plot(r,pkx22(k),'.b','markersize',3);hold on

databifurcation22(k,2*i-1)=r;
databifurcation22(k,2*i)=pkx22(k);
end
% xlabel('\fontname{Times New Roman}\fontsize{24}\it{r}');
% ylabel('\fontname{Times New Roman}\fontsize{24}{Max(\it{N_22})}');
% set(gca,'FontName','Times New Roman','FontSize',24,'linewidth',1.5);
% %set(gca,'XScale','log')
% set(gca,'YScale','log')
% %axis([20,40,2,5]);


xx23=y(na:length(y(:,1)),23);
nx=length(xx23);
pkx23=[];
for j=2:(nx-1)
    if xx23(j-1)<xx23(j)&&xx23(j)>xx23(j+1)
        pkx23=[xx23(j)   pkx23];

    end
end

nm=length(pkx23);
for k=1:nm
    %plot(r,pkx23(k),'.b','markersize',3);hold on

databifurcation23(k,2*i-1)=r;
databifurcation23(k,2*i)=pkx23(k);
end
% xlabel('\fontname{Times New Roman}\fontsize{24}\it{r}');
% ylabel('\fontname{Times New Roman}\fontsize{24}{Max(\it{N_23})}');
% set(gca,'FontName','Times New Roman','FontSize',24,'linewidth',1.5);
% %set(gca,'XScale','log')
% set(gca,'YScale','log')
% %axis([20,40,2,5]);


xx24=y(na:length(y(:,1)),24);
nx=length(xx24);
pkx24=[];
for j=2:(nx-1)
    if xx24(j-1)<xx24(j)&&xx24(j)>xx24(j+1)
        pkx24=[xx24(j)   pkx24];

    end
end

nm=length(pkx24);
for k=1:nm
    %plot(r,pkx24(k),'.b','markersize',3);hold on

databifurcation24(k,2*i-1)=r;
databifurcation24(k,2*i)=pkx24(k);
end
% xlabel('\fontname{Times New Roman}\fontsize{24}\it{r}');
% ylabel('\fontname{Times New Roman}\fontsize{24}{Max(\it{N_24})}');
% set(gca,'FontName','Times New Roman','FontSize',24,'linewidth',1.5);
% %set(gca,'XScale','log')
% set(gca,'YScale','log')
% %axis([20,40,2,5]);


xx25=y(na:length(y(:,1)),25);
nx=length(xx25);
pkx25=[];
for j=2:(nx-1)
    if xx25(j-1)<xx25(j)&&xx25(j)>xx25(j+1)
        pkx25=[xx25(j)   pkx25];

    end
end

nm=length(pkx25);
for k=1:nm
    %plot(r,pkx25(k),'.b','markersize',3);hold on

databifurcation25(k,2*i-1)=r;
databifurcation25(k,2*i)=pkx25(k);
end
% xlabel('\fontname{Times New Roman}\fontsize{24}\it{r}');
% ylabel('\fontname{Times New Roman}\fontsize{24}{Max(\it{N_25})}');
% set(gca,'FontName','Times New Roman','FontSize',24,'linewidth',1.5);
% %set(gca,'XScale','log')
% set(gca,'YScale','log')
% %axis([20,40,2,5]);


xx26=y(na:length(y(:,1)),26);
nx=length(xx26);
pkx26=[];
for j=2:(nx-1)
    if xx26(j-1)<xx26(j)&&xx26(j)>xx26(j+1)
        pkx26=[xx26(j)   pkx26];

    end
end

nm=length(pkx26);
for k=1:nm
    %plot(r,pkx26(k),'.b','markersize',3);hold on

databifurcation26(k,2*i-1)=r;
databifurcation26(k,2*i)=pkx26(k);
end
% xlabel('\fontname{Times New Roman}\fontsize{24}\it{r}');
% ylabel('\fontname{Times New Roman}\fontsize{24}{Max(\it{N_26})}');
% set(gca,'FontName','Times New Roman','FontSize',24,'linewidth',1.5);
% %set(gca,'XScale','log')
% set(gca,'YScale','log')
% %axis([20,40,2,5]);


xx27=y(na:length(y(:,1)),27);
nx=length(xx27);
pkx27=[];
for j=2:(nx-1)
    if xx27(j-1)<xx27(j)&&xx27(j)>xx27(j+1)
        pkx27=[xx27(j)   pkx27];

    end
end

nm=length(pkx27);
for k=1:nm
    %plot(r,pkx27(k),'.b','markersize',3);hold on

databifurcation27(k,2*i-1)=r;
databifurcation27(k,2*i)=pkx27(k);
end
% xlabel('\fontname{Times New Roman}\fontsize{24}\it{r}');
% ylabel('\fontname{Times New Roman}\fontsize{24}{Max(\it{N_27})}');
% set(gca,'FontName','Times New Roman','FontSize',24,'linewidth',1.5);
% %set(gca,'XScale','log')
% set(gca,'YScale','log')
% %axis([20,40,2,5]);


xx28=y(na:length(y(:,1)),28);
nx=length(xx28);
pkx28=[];
for j=2:(nx-1)
    if xx28(j-1)<xx28(j)&&xx28(j)>xx28(j+1)
        pkx28=[xx28(j)   pkx28];

    end
end

nm=length(pkx28);
for k=1:nm
    %plot(r,pkx28(k),'.b','markersize',3);hold on

databifurcation28(k,2*i-1)=r;
databifurcation28(k,2*i)=pkx28(k);
end
% xlabel('\fontname{Times New Roman}\fontsize{24}\it{r}');
% ylabel('\fontname{Times New Roman}\fontsize{24}{Max(\it{N_28})}');
% set(gca,'FontName','Times New Roman','FontSize',24,'linewidth',1.5);
% %set(gca,'XScale','log')
% set(gca,'YScale','log')
% %axis([20,40,2,5]);


xx29=y(na:length(y(:,1)),29);
nx=length(xx29);
pkx29=[];
for j=2:(nx-1)
    if xx29(j-1)<xx29(j)&&xx29(j)>xx29(j+1)
        pkx29=[xx29(j)   pkx29];

    end
end

nm=length(pkx29);
for k=1:nm
    %plot(r,pkx29(k),'.b','markersize',3);hold on

databifurcation29(k,2*i-1)=r;
databifurcation29(k,2*i)=pkx29(k);
end
% xlabel('\fontname{Times New Roman}\fontsize{24}\it{r}');
% ylabel('\fontname{Times New Roman}\fontsize{24}{Max(\it{N_29})}');
% set(gca,'FontName','Times New Roman','FontSize',24,'linewidth',1.5);
% %set(gca,'XScale','log')
% set(gca,'YScale','log')
% %axis([20,40,2,5]);


xx30=y(na:length(y(:,1)),30);
nx=length(xx30);
pkx30=[];
for j=2:(nx-1)
    if xx30(j-1)<xx30(j)&&xx30(j)>xx30(j+1)
        pkx30=[xx30(j)   pkx30];

    end
end

nm=length(pkx30);
for k=1:nm
    %plot(r,pkx30(k),'.b','markersize',3);hold on

databifurcation30(k,2*i-1)=r;
databifurcation30(k,2*i)=pkx30(k);
end
% xlabel('\fontname{Times New Roman}\fontsize{24}\it{r}');
% ylabel('\fontname{Times New Roman}\fontsize{24}{Max(\it{N_30})}');
% set(gca,'FontName','Times New Roman','FontSize',24,'linewidth',1.5);
% %set(gca,'XScale','log')
% set(gca,'YScale','log')
% %axis([20,40,2,5]);


xx31=y(na:length(y(:,1)),31);
nx=length(xx31);
pkx31=[];
for j=2:(nx-1)
    if xx31(j-1)<xx31(j)&&xx31(j)>xx31(j+1)
        pkx31=[xx31(j)   pkx31];

    end
end

nm=length(pkx31);
for k=1:nm
    %plot(r,pkx31(k),'.b','markersize',3);hold on

databifurcation31(k,2*i-1)=r;
databifurcation31(k,2*i)=pkx31(k);
end
% xlabel('\fontname{Times New Roman}\fontsize{24}\it{r}');
% ylabel('\fontname{Times New Roman}\fontsize{24}{Max(\it{N_31})}');
% set(gca,'FontName','Times New Roman','FontSize',24,'linewidth',1.5);
% %set(gca,'XScale','log')
% set(gca,'YScale','log')
% %axis([20,40,2,5]);


xx32=y(na:length(y(:,1)),32);
nx=length(xx32);
pkx32=[];
for j=2:(nx-1)
    if xx32(j-1)<xx32(j)&&xx32(j)>xx32(j+1)
        pkx32=[xx32(j)   pkx32];

    end
end

nm=length(pkx32);
for k=1:nm
    %plot(r,pkx32(k),'.b','markersize',3);hold on

databifurcation32(k,2*i-1)=r;
databifurcation32(k,2*i)=pkx32(k);
end
% xlabel('\fontname{Times New Roman}\fontsize{24}\it{r}');
% ylabel('\fontname{Times New Roman}\fontsize{24}{Max(\it{N_32})}');
% set(gca,'FontName','Times New Roman','FontSize',24,'linewidth',1.5);
% %set(gca,'XScale','log')
% set(gca,'YScale','log')
% %axis([20,40,2,5]);



end

% save databifurcation1
% save databifurcation2
% save databifurcation3
% save databifurcation4
% save databifurcation5
% save databifurcation6
% save databifurcation7
% save databifurcation8
% save databifurcation9
% save databifurcation10
% save databifurcation11
% save databifurcation12
% save databifurcation13
% save databifurcation14
% save databifurcation15
% save databifurcation16
% save databifurcation17
% save databifurcation18
% save databifurcation19
% save databifurcation20
% save databifurcation21
% save databifurcation22
% save databifurcation23
% save databifurcation24
% save databifurcation25
% save databifurcation26
% save databifurcation27
% save databifurcation28
% save databifurcation29
% save databifurcation30
% save databifurcation31
% save databifurcation32


figure
hold on
for l=1:rn

plot(databifurcation25(:,2*l-1),databifurcation25(:,2*l),'.b','markersize',10);
end
xlabel('\fontname{Times New Roman}\fontsize{24}\it{r}');
ylabel('\fontname{Times New Roman}\fontsize{24}{Max(\it{N_2})}');
set(gca,'FontName','Times New Roman','FontSize',24,'linewidth',1.5);
%set(gca,'XScale','log')
set(gca,'YScale','log')
%axis([20,40,2,5]);



toc