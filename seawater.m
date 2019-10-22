clear all;
close all;

load('lear.mat')
load('data803.mat');
load('data805.mat');
load('data806.mat');
load('data807.mat');


t_all=[t803;t805;t806;t807];
Sr_all=[Sr803;Sr805;Sr806;Sr807]*1000;

[t_all, a_order] = sort(t_all);
Sr_all = Sr_all(a_order,:);

Sr_all_smooth=smooth(t_all,Sr_all,'rloess');

figure('units','normalized','outerposition',[0 0 1 1])

subplot(3,1,1);
hold on
title('(a)');
scatter(t803,Sr803*1000,'+','LineWidth',1.5);
scatter(t805,Sr805*1000,'s','LineWidth',1.5);
scatter(t806,Sr806*1000,'x','LineWidth',1.5);
scatter(t807,Sr807*1000,'d','LineWidth',1.5);
scatter(t_lear,sr_lear,'o','MarkerEdgeColor',[0.5 0.5 0.5],'LineWidth',1.5);


ylabel('Sr/Ca in seawater (mM/M)');
xlabel('Age (Myr)')
set(gca,'FontSize',16,'fontweight','bold')
legend({'Site 803','805','806','807','Lear et al. (2003)'},'Location','NorthEast','FontSize',8);
pbaspect([3 1 1])
box on
ax = gca;
ax.LineWidth = 1.5;

load('tripati.mat');
load('coggon.mat');
load('gothman.mat');
load('lear2.mat');


subplot(3,1,2);
hold on
title('(b)');

load steuber.mat;


scatter(coggon_age,coggon_revised,'s','LineWidth',1.5);
scatter(gothman_age,gothman_ratio,'+','LineWidth',1.5);
scatter(lear_age,lear_ratio,'o','MarkerEdgeColor',[0.5 0.5 0.5],'LineWidth',1.5);
plot(0,10);
plot(t_all,Sr_all_smooth,'linewidth',1.5);

xlim([0 70]);

ylabel('Sr/Ca in seawater (mM/M)');
xlabel('Age (Myr)')
set(gca,'FontSize',16,'fontweight','bold')
pbaspect([3 1 1])
box on
ax = gca;
ax.LineWidth = 1.5;

subplot(3,1,3);
hold on
title('(c)');

scatter(coggon_age,coggon_revised,'s','LineWidth',1.5);
scatter(gothman_age,gothman_ratio,'+','LineWidth',1.5);
scatter(lear_age,lear_ratio,'o','MarkerEdgeColor',[0.5 0.5 0.5],'LineWidth',1.5);
scatter(t_sr(1:end),sr(1:end),'x','LineWidth',1.5);
plot(0,0);

plot([40,40],[0,20],'k--','MarkerEdgeColor',[0.5 0.5 0.5],'LineWidth',1);
plot([180,180],[0,20],'k--','MarkerEdgeColor',[0.5 0.5 0.5],'LineWidth',1);
plot([330,330],[0,20],'k--','MarkerEdgeColor',[0.5 0.5 0.5],'LineWidth',1);

dim = [.12 .22 .3 .1];
str = 'Aragonite';
annotation('textbox',dim,'String',str,'FitBoxToText','on','LineStyle','none');

dim = [.25 .22 .3 .1];
str = 'Calcite';
annotation('textbox',dim,'String',str,'FitBoxToText','on','LineStyle','none');

dim = [.48 .22 .3 .1];
str = 'Aragonite';
annotation('textbox',dim,'String',str,'FitBoxToText','on','LineStyle','none');

dim = [.7 .22 .3 .1];
str = 'Calcite';
annotation('textbox',dim,'String',str,'FitBoxToText','on','LineStyle','none');

xlim([0 500]);
ylim([0 15]);
ylabel('Sr/Ca in seawater (mM/M)');
xlabel('Age (Myr)')
set(gca,'FontSize',16,'fontweight','bold')
lgd=legend({'Revised Coggon et al. (2010)','Gothman et al. (2015)','Lear et al. (2003)','Steuber and Veizer (2002)','Bulk sediment, this study'},'FontSize',8,'Location','SouthEast');
pbaspect([3 1 1])
box on
ax = gca;
ax.LineWidth = 1.5;


% print('seawater.jpg','-djpeg','-r400');

print('seawater.pdf','-dpdf','-fillpage')