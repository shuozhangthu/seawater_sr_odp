
site_Number = 806;

%-------input data----------
[Leg1,Site1,Topcm1,Botcm,Depthmbsf1,CalciumCamM,ChlorinityClmM,MagnesiumMgmM,pHpHna,SodiumNamM,StrontiumSruM,SulfateSO4mM,SilicaH4SiO4uM,AlkalinityALKmM,SalinitySALna] = importfile_water('water.xlsx');

index=(Site1==site_Number);
depth2=Depthmbsf1(index);
Ca2_data=CalciumCamM(index);


alpha0=0.00015;
beta0=600;
gamma0=600;
v0=0;
grc_ca0=0;

y0=[alpha0,beta0,gamma0,v0,grc_ca0];
lb=[0,-100,-100000,0,-100];
ub=[0,100,100000,0,100];

y = lsqcurvefit(@Ca_806_function,y0,depth2,Ca2_data,lb,ub)


figure
plot(Ca_806_function(y,depth2),depth2,'linewidth',2)
set(gca,'Ydir','reverse')
title('Calcium (mM) in pore water (site:806)')
xlabel('Calcium (mM) in pore water');
ylabel('Depth (m)')
set(gca,'FontSize',12)

hold on;

scatter (Ca2_data,depth2);


newName = 'y806';
S.(newName) = [site_Number,y];
save('parameters_Ca_806.mat', '-struct', 'S'); 
