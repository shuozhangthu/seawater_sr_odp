clear all

site_Number = 803;


[Leg1,Site1,Topcm1,Botcm,Depthmbsf1,CalciumCamM,ChlorinityClmM,MagnesiumMgmM,pHpHna,SodiumNamM,StrontiumSruM,SulfateSO4mM,SilicaH4SiO4uM,AlkalinityALKmM,SalinitySALna] = importfile_water('water.xlsx');
index=(Site1==site_Number & Depthmbsf1<200);
depth=Depthmbsf1(index);
Sr=StrontiumSruM(index);


[depth, a_order] = sort(depth);
Sr = Sr(a_order,:);

alpha0 = 0;  %[mM/1 porewater]  by fitting
beta0=0.013;
gamma0=600;
v0=0;
gra_sr0=0.008;

zz0=[alpha0,beta0,gamma0,v0,gra_sr0];

lb=[0 ,-100000,0,0,0];
ub=[0,100000,10000,0,0];

zz = lsqcurvefit(@Sr_803_function,zz0,depth,Sr/1000,lb,ub);


figure;
plot(Sr_803_function(zz,depth),depth,'linewidth',2)
hold on
scatter(Sr/1000,depth,'ko')
hold on
set(gca,'Ydir','reverse')
title("Site 803")
xlabel('Sr (mM) in pore water');
ylabel('Depth (m)')
set(gca,'FontSize',12)


newName = 'zz803';
S.(newName) = [site_Number,zz];
save('parameters_sr_803.mat', '-struct', 'S'); 

