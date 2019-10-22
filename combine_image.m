% Load saved figures
h1=openfig('calcium803.fig');
h2=openfig('calcium805.fig');
h3=openfig('calcium806.fig');
h4=openfig('calcium807.fig');
% % Prepare subplots
figure
h(1)=subplot(2,2,1);
copyobj(allchild(get(h1,'CurrentAxes')),h(1));

set(gca,'Ydir','reverse')
title("Site 803");
xlabel('Calcium (mM) in pore water');
ylabel('Present-day depth (m)')
set(gca,'FontSize',8)
legend('t=39.8 m.y., present day','t=35 m.y.','t=30 m.y.','t=25 m.y.','Calcium Data','fontsize',6,'location','best')


h(2)=subplot(2,2,2);
copyobj(allchild(get(h2,'CurrentAxes')),h(2));
set(gca,'Ydir','reverse')
title("Site 805");
xlabel('Calcium (mM) in pore water');
ylabel('Present-day depth (m)')
set(gca,'FontSize',8)
legend('t=27.9 m.y., present day','t=20 m.y.','t=15 m.y.','t=10 m.y.','Calcium Data','fontsize',6,'location','best')

h(3)=subplot(2,2,3);
copyobj(allchild(get(h3,'CurrentAxes')),h(3));
set(gca,'Ydir','reverse')
title("Site 806");
xlabel('Calcium (mM) in pore water');
ylabel('Present-day depth (m)')
set(gca,'FontSize',8)
legend('t=24.9 m.y., present day','t=20 m.y.','t=15 m.y.','t=10 m.y.','Calcium Data','fontsize',6,'location','best')

h(4)=subplot(2,2,4);
copyobj(allchild(get(h4,'CurrentAxes')),h(4));
set(gca,'Ydir','reverse')
title("Site 807");
xlabel('Calcium (mM) in pore water');
ylabel('Present-day depth (m)')
set(gca,'FontSize',8)
legend('t=46.3 m.y., present day','t=35 m.y.','t=25 m.y.','t=15 m.y.','Calcium Data','fontsize',6,'location','best')

print('calcium80x.pdf','-dpdf','-bestfit');





% Load saved figures
h1=openfig('sulfate803.fig');
h2=openfig('sulfate805.fig');
h3=openfig('sulfate806.fig');
h4=openfig('sulfate807.fig');
% % Prepare subplots
figure
h(1)=subplot(2,2,1);
copyobj(allchild(get(h1,'CurrentAxes')),h(1));

set(gca,'Ydir','reverse')
title("Site 803");
xlabel('Sulfate (mM) in pore water');
ylabel('Present-day depth (m)')
set(gca,'FontSize',8)
legend('t=39.8 m.y., present day','t=35 m.y.','t=30 m.y.','t=25 m.y.','Sulfate Data','fontsize',6,'location','southeast')


h(2)=subplot(2,2,2);
copyobj(allchild(get(h2,'CurrentAxes')),h(2));
set(gca,'Ydir','reverse')
title("Site 805");
xlabel('Sulfate (mM) in pore water');
ylabel('Present-day depth (m)')
set(gca,'FontSize',8)
legend('t=27.9 m.y., present day','t=20 m.y.','t=15 m.y.','t=10 m.y.','Sulfate Data','fontsize',6,'location','southeast')

h(3)=subplot(2,2,3);
copyobj(allchild(get(h3,'CurrentAxes')),h(3));
set(gca,'Ydir','reverse')
title("Site 806");
xlabel('Sulfate (mM) in pore water');
ylabel('Present-day depth (m)')
set(gca,'FontSize',8)
legend('t=24.9 m.y., present day','t=20 m.y.','t=15 m.y.','t=10 m.y.','Sulfate Data','fontsize',6,'location','southeast')

h(4)=subplot(2,2,4);
copyobj(allchild(get(h4,'CurrentAxes')),h(4));
set(gca,'Ydir','reverse')
title("Site 807");
xlabel('Sulfate (mM) in pore water');
ylabel('Present-day depth (m)')
set(gca,'FontSize',8)
legend('t=46.3 m.y., present day','t=35 m.y.','t=25 m.y.','t=15 m.y.','Sulfate Data','fontsize',6,'location','southeast')

print('sulfate80x.pdf','-dpdf','-bestfit');


% Load saved figures
h1=openfig('Sr803.fig');
h2=openfig('Sr805.fig');
h3=openfig('Sr806.fig');
h4=openfig('Sr807.fig');
% % Prepare subplots
figure
h(1)=subplot(2,2,1);
copyobj(allchild(get(h1,'CurrentAxes')),h(1));

set(gca,'Ydir','reverse')
title("Site 803");
xlabel('Sr (mM) in pore water');
ylabel('Present-day depth (m)')
set(gca,'FontSize',8)
legend('t=39.8 m.y., present day','t=35 m.y.','t=30 m.y.','t=25 m.y.','Sr Data','fontsize',6,'location','southwest')


h(2)=subplot(2,2,2);
copyobj(allchild(get(h2,'CurrentAxes')),h(2));
set(gca,'Ydir','reverse')
title("Site 805");
xlabel('Sr (mM) in pore water');
ylabel('Present-day depth (m)')
set(gca,'FontSize',8)
legend('t=27.9 m.y., present day','t=20 m.y.','t=15 m.y.','t=10 m.y.','Sr Data','fontsize',6,'location','southwest')

h(3)=subplot(2,2,3);
copyobj(allchild(get(h3,'CurrentAxes')),h(3));
set(gca,'Ydir','reverse')
title("Site 806");
xlabel('Sr (mM) in pore water');
ylabel('Present-day depth (m)')
set(gca,'FontSize',8)
legend('t=24.9 m.y., present day','t=20 m.y.','t=15 m.y.','t=10 m.y.','Sr Data','fontsize',6,'location','southwest')

h(4)=subplot(2,2,4);
copyobj(allchild(get(h4,'CurrentAxes')),h(4));
set(gca,'Ydir','reverse')
title("Site 807");
xlabel('Sr (mM) in pore water');
ylabel('Present-day depth (m)')
set(gca,'FontSize',8)
legend('t=46.3 m.y., present day','t=35 m.y.','t=25 m.y.','t=15 m.y.','Sr Data','fontsize',6,'location','southwest')

print('Sr80x.pdf','-dpdf','-bestfit');

% Load saved figures
h1=openfig('solid803.fig');
h2=openfig('solid805.fig');
h3=openfig('solid806.fig');
h4=openfig('solid807.fig');
% % Prepare subplots
figure
h(1)=subplot(2,2,1);
copyobj(allchild(get(h1,'CurrentAxes')),h(1));

set(gca,'Ydir','reverse')
title("Site 803");
xlabel('Sr/Ca in solid carbonate (mM/M)');
ylabel('Present-day depth (m)')
set(gca,'FontSize',8)
legend('Sr/Ca after diagenesis','Sr/Ca measured','Sr/Ca in depositional solid','fontsize',6,'location','northeast');


h(2)=subplot(2,2,2);
copyobj(allchild(get(h2,'CurrentAxes')),h(2));
set(gca,'Ydir','reverse')
title("Site 805");
xlabel('Sr/Ca in solid carbonate (mM/M)');
ylabel('Present-day depth (m)')
set(gca,'FontSize',8)
legend('Sr/Ca after diagenesis','Sr/Ca measured','Sr/Ca in depositional solid','fontsize',6,'location','northwest');

h(3)=subplot(2,2,3);
copyobj(allchild(get(h3,'CurrentAxes')),h(3));
set(gca,'Ydir','reverse')
title("Site 806");
xlabel('Sr/Ca in solid carbonate (mM/M)');
ylabel('Present-day depth (m)')
set(gca,'FontSize',8)
legend('Sr/Ca after diagenesis','Sr/Ca measured','Sr/Ca in depositional solid','fontsize',6,'location','northwest');

h(4)=subplot(2,2,4);
copyobj(allchild(get(h4,'CurrentAxes')),h(4));
set(gca,'Ydir','reverse')
title("Site 807");
xlabel('Sr/Ca in solid carbonate (mM/M)');
ylabel('Present-day depth (m)')
set(gca,'FontSize',8)
legend('Sr/Ca after diagenesis','Sr/Ca measured','Sr/Ca in depositional solid','fontsize',6,'location','northwest');

print('solid80x.pdf','-dpdf','-bestfit');


