clear all
close all

load steuber;
load stanley;
load('lear2.mat')

t=[0:1:500];
sr_ca=interp1([t_sr;lear_age],[sr;lear_ratio],t);
mg_ca=interp1(t_mg,mg,t);

figure;
hold on
plot(t,sr_ca,'linewidth',2);
scatter(lear_age,lear_ratio);
scatter(t_sr,sr);
xlabel('Time (Ma)');
ylabel('Seawater Sr/Ca and Mg/Ca (mM/M)')
set(gca,'FontSize',12)

legend('Sr/Ca', 'Lear et al.','Steuber and Veizer','Location','best')
box on
% print('sr_ca.jpg','-djpeg','-r600');


figure('units','normalized','outerposition',[0 0 1 1])
subplot(2,1,1);
title('(a)');
hold on
plot(t,2.3./sr_ca,'-','Linewidth',2);
plot(t,2.5./sr_ca,'--','Linewidth',2);
plot(t,2.7./sr_ca,'-.','Linewidth',2);

xlabel('Time (Ma)');
ylabel('K_{Sr}^{effective}');
box on
set(gca,'FontSize',12)
legend('[Sr/Ca]_{input}=2.3 mM/M','[Sr/Ca]_{input}=2.5 mM/M','[Sr/Ca]_{input}=2.7 mM/M','location','NorthWest','fontsize',8)

pbaspect([2 1 1])
box on
ax = gca;
ax.LineWidth = 1.5;




D_cal=0.15;
D_arag=1.0;

subplot(2,1,2);
hold on
title('(b)');
f_arag=(2.3./sr_ca-D_cal)./(D_arag-D_cal);
plot(t,f_arag,'-','Linewidth',2);
f_arag=(2.7./sr_ca-D_cal)./(D_arag-D_cal);
plot(t,f_arag,'--','Linewidth',2);
f_arag=(2.3./sr_ca-0.2)./(D_arag-0.2);
plot(t,f_arag,'-.','Linewidth',2);
f_arag=(2.7./sr_ca-0.2)./(D_arag-0.2);
plot(t,f_arag,':','Linewidth',2);

xlabel('Time (Ma)');
ylabel('Fraction of Ca removal into aragonite')
set(gca,'FontSize',12)
legend('[Sr/Ca]_{input}=2.3 mM/M, K_{Sr}(calcite)=0.15','[Sr/Ca]_{input}=2.7 mM/M, K_{Sr}(calcite)=0.15','[Sr/Ca]_{input}=2.3 mM/M, K_{Sr}(calcite)=0.2','[Sr/Ca]_{input}=2.7 mM/M, K_{Sr}(calcite)=0.2','location','NorthWest','fontsize',8);
pbaspect([2 1 1])
box on
ax = gca;
ax.LineWidth = 1.5;

% print('aragonite.jpg','-djpeg','-r600');
print('aragonite.pdf','-dpdf','-fillpage');
