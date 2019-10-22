clear all;
close all;

load('data803.mat');
load('data805.mat');
load('data806.mat');
load('data807.mat');

t_803=0.0591;
t_805=0.0385;
t_806=0.0271;
t_807=0.0329;

figure
hold on

plot(Rd803*100,z803*t_803,'-','linewidth',2);
plot(Rd805*100,z805*t_805,'-.','linewidth',2);
plot(Rd806*100,z806*t_806,':','linewidth',2);
plot(Rd807*100,z807*t_807,'--','linewidth',2);

set(gca,'Ydir','reverse');

xlabel('Recrystallization rate (%/Myr)');
ylabel('Age (Myr)');
set(gca,'FontSize',12);
legend('Site 803','805','806','807','Location','SouthEast');
box on 

% print('Rd_age.jpg','-djpeg','-r600');
print('Rd_age.pdf','-dpdf');
