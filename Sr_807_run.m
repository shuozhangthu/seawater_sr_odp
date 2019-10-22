clear all
close all


Sr_807_main;

site_Number = 807;

load('parameters_su_807.mat');
load('parameters_Ca_807.mat');
%% ============define parameters==============================
K_sr_sea = 0.194;    % Sr/Ca ratio in the solid over seawater

rho_s = 2.7;    % g/cm^3 ->g/m^3
rho_f = 1;      % g/cm^3 ->g/m^3

alpha=zz(1);
beta=zz(2);
gamma=zz(3);
v=zz(4);
gra_sr = zz(5); % gradient in fluids (zero gradient in solid)

gra_su = x807(6);
gra_ca = y807(6);

V=0;
Ks=x807(5);



z_step = [0;1;1;1;1;1;1;1;1;1;1;1;1;1;0.990000000000000;0.990000000000000;0.990000000000000;0.990000000000000;0.990000000000000;0.990000000000000;0.990000000000000;0.990000000000000;0.990000000000000;1;1;0.990000000000000;0.990000000000000;0.990000000000000;0.980000000000000;0.980000000000000;0.980000000000000;0.980000000000000;0.980000000000000;0.980000000000000;0.980000000000000;0.980000000000000;0.990000000000000;0.980000000000000;0.990000000000000;0.990000000000000;0.980000000000000;0.990000000000000;0.980000000000000;0.980000000000000;0.970000000000000;0.970000000000000;0.970000000000000;0.970000000000000;0.970000000000000;0.970000000000000;0.970000000000000;0.970000000000000;0.970000000000000;0.970000000000000;0.970000000000000;0.970000000000000;0.970000000000000;0.970000000000000;0.960000000000000;0.960000000000000;0.960000000000000;0.960000000000000;0.960000000000000;0.960000000000000;0.960000000000000;0.960000000000000;0.950000000000000;0.960000000000000;0.970000000000000;0.970000000000000;0.950000000000000;0.970000000000000;0.970000000000000;0.950000000000000;0.950000000000000;0.950000000000000;0.950000000000000;0.950000000000000;0.950000000000000;0.950000000000000;0.950000000000000;0.950000000000000;0.950000000000000;0.950000000000000;0.950000000000000;0.950000000000000;0.950000000000000;0.950000000000000;0.950000000000000;0.950000000000000;0.950000000000000;0.940000000000000;0.940000000000000;0.940000000000000;0.940000000000000;0.940000000000000;0.940000000000000;0.940000000000000;0.940000000000000;0.940000000000000;0.940000000000000;0.940000000000000;0.940000000000000;0.940000000000000;0.940000000000000;0.940000000000000;0.940000000000000;0.940000000000000;0.940000000000000;0.930000000000000;0.930000000000000;0.930000000000000;0.930000000000000;0.930000000000000;0.930000000000000;0.930000000000000;0.930000000000000;0.930000000000000;0.930000000000000;0.930000000000000;0.930000000000000;0.930000000000000;0.930000000000000;0.930000000000000;0.930000000000000;0.930000000000000;0.930000000000000;0.930000000000000;0.920000000000000;0.920000000000000;0.920000000000000;0.920000000000000;0.920000000000000;0.920000000000000;0.920000000000000;0.920000000000000;0.920000000000000;0.920000000000000;0.920000000000000;0.920000000000000;0.920000000000000;0.920000000000000;0.920000000000000;0.920000000000000;0.920000000000000;0.920000000000000;0.920000000000000;0.920000000000000;0.910000000000000;0.910000000000000;0.920000000000000;0.910000000000000;0.910000000000000;0.910000000000000;0.910000000000000;0.910000000000000;0.910000000000000;0.910000000000000;0.910000000000000;0.910000000000000;0.910000000000000;0.910000000000000;0.910000000000000;0.910000000000000;0.910000000000000;0.910000000000000;0.910000000000000;0.910000000000000;0.910000000000000;0.900000000000000;0.900000000000000;0.900000000000000;0.900000000000000;0.900000000000000;0.900000000000000;0.900000000000000;0.900000000000000;0.900000000000000;0.900000000000000;0.900000000000000;0.900000000000000;0.900000000000000;0.900000000000000;0.900000000000000;0.900000000000000;0.900000000000000;0.900000000000000;0.900000000000000;0.900000000000000;0.900000000000000;0.900000000000000;0.890000000000000;0.890000000000000;0.890000000000000;0.900000000000000;0.890000000000000;0.900000000000000;0.900000000000000;0.890000000000000;0.900000000000000;0.900000000000000;0.900000000000000;0.890000000000000;0.900000000000000;0.890000000000000;0.890000000000000;0.900000000000000;0.890000000000000;0.900000000000000;0.900000000000000;0.890000000000000;0.900000000000000;0.900000000000000;0.900000000000000;0.880000000000000;0.880000000000000;0.880000000000000;0.890000000000000;0.880000000000000;0.880000000000000;0.880000000000000;0.880000000000000;0.880000000000000;0.880000000000000;0.880000000000000;0.880000000000000;0.880000000000000;0.880000000000000;0.880000000000000;0.880000000000000;0.880000000000000;0.880000000000000;0.880000000000000;0.880000000000000;0.880000000000000;0.880000000000000;0.880000000000000;0.880000000000000;0.880000000000000;0.870000000000000;0.870000000000000;0.870000000000000;0.870000000000000;0.870000000000000;0.870000000000000;0.870000000000000;0.870000000000000;0.870000000000000;0.870000000000000;0.870000000000000;0.870000000000000;0.870000000000000;0.870000000000000;0.870000000000000;0.870000000000000;0.870000000000000;0.870000000000000;0.870000000000000;0.870000000000000;0.870000000000000;0.860000000000000;0.870000000000000;0.870000000000000;0.870000000000000;0.870000000000000;0.870000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.840000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.790000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.790000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.720000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000];
J = length(z_step);
N = J;

t_step = 0.032923143432439;
t = zeros(N,1);
z = zeros(N,1);

for i = 2:N
    t(i) = t(i-1) + t_step;
end

for i = 2:N
    z(i) = z(i-1) + z_step(i);
end

f_a = 0;
f_b = 69.6/100;
f_c = 1/0.00051;
phi_z = f_a + f_b*exp(-z/f_c);  % porosity over depth

fc=1.0;

R_d = zeros(N,J);
R_net = zeros(N,J);
R_p = zeros(N,J);

for n = 1:N
    for j = 1:n
        R_net(n,j) = y807(2)+y807(3)*exp(-z(n-j+1)/y807(4));
    end
end


temp_T = 0.01633*z+274.9;

K_sr = zeros(length(z),1);

for i = 1:length(z)
    K_sr(i)=0.02;
end

D0 = zeros(length(z),1);
D = zeros(length(z),1);

for i = 1:length(z)
    D0(i) = (3.69+ 0.169 * (temp_T(i)-273.15)) * 3.65 * 24 * 36;
    D(i) = D0(i) / (1-log(phi_z(i)^2));
end

D_so4=1.53*D;

L = 0.5;
k_su = x807(3);
G0 = x807(2);  %[mM/1 porewater]  by fitting

% K_sp is from fitting data, fitting celestite
K_sp = zeros(J,1);
for i = 1 :J
    K_sp(i) = -0.003557 * z(i) + 20.73+0.5;
end

for n = 1:N
    for j = 1:n
        R_d (n,j) = alpha+beta*exp(-z(n-j+1)/gamma);
        R_p(n,j) = R_d(n,j) - R_net(n,j);
    end
end

%% =============read data====================

%read data
[Leg1,Site1,Topcm1,Botcm,Depthmbsf1,CalciumCamM,ChlorinityClmM,MagnesiumMgmM,pHpHna,SodiumNamM,StrontiumSruM,SulfateSO4mM,SilicaH4SiO4uM,AlkalinityALKmM,SalinitySALna] = importfile_water('water.xlsx');
index=(Site1==site_Number);
depth=Depthmbsf1(index);
Sr=StrontiumSruM(index);

depth2=Depthmbsf1(index);
Ca2_data=CalciumCamM(index);

[site_sr,depth_sr,age_sr,SrCaRatio_Solid] = importfile_Solid_Sr('SrCaSolid.xlsx');

indexsr=(site_sr==site_Number);
depth1=depth_sr(indexsr);
Solid_Sr=SrCaRatio_Solid(indexsr)*10; % convert m mole/mole to mM of solid Sr
Solid_Sr_T = transpose(interp1(depth1,Solid_Sr,z,'linear','extrap'));   % interpolate and extrapolate the Sr-depth data with Linear method

%% ==========Ca calculation and best fit===========

Ca_pore = zeros(N,J);        % Ca profile over space and time
Ca_sea = zeros(N,1);

for n = 1: N
    Ca_sea(n) = 10.62+0.161*t(n);
end

for n =1:N
    Ca_pore(n,n:n+1) = 10.62 + 0.161*t(N-n+1);
end

Ca_pore(2,1) = Ca_pore(2,2)+ z_step(2)* gra_ca;

for n = 2: N-1
    
    a10 = 2*D(n-2+1)*t_step/z_step(n-2+2)^2;
    b10 = t_step*v/z_step(n-2+2);
    
    Ca_pore(n+1,2) = ((a10-b10)*Ca_pore(n,2+1) + (a10+b10)*(Ca_pore(n, 3) + 2 * z_step(n)* gra_ca) + (1-a10)*Ca_pore(n-1,2) + 2*10*1000 * t_step * R_net(n-2+1) *fc* rho_s / rho_f * (1-phi_z(n-2+2)) / phi_z(n-2+2)) / (1+a10);
    
    for j = 3:n
        
        a1 = 2*D(n-j+1)*t_step/z_step(n-j+2)^2;
        b1 = t_step*v/z_step(n-j+2);
        
        Ca_pore(n+1,j) = ((a1-b1)*Ca_pore(n,j+1) + (a1+b1)*Ca_pore(n,j-1) + (1-a1)*Ca_pore(n-1,j) + 2*10*1000 * t_step * R_net(n-j+1) *fc* rho_s / rho_f * (1-phi_z(n-j+2)) / phi_z(n-j+2)) / (1+a1);
        
    end

end

Ca_pore(:,1)=Ca_pore(:,2);

k = zeros(N,J);     % Sr/Sr2+ coefficient between solid and pore water

for n = 1:N
    for j = 1: n
        k(n,j) = K_sr(n-j+1) * 10 / Ca_pore(n,j) *1000;
    end
end

%% =========== Sulfate reduction model ==========

G= zeros(N,J);
G(:,1) = G0;
G(1,2) = G0;

for i = 1:N
    G(i,i:i+1) = G0;
end

C_su=zeros(N,J);

%---------boundary condition of sulfate in the pore water---------
Sea_sulfate=zeros(N,1);
for i = 1: N
    Sea_sulfate(i) = -0.15 * t(i) + 28;
end

for i = 1:N
    C_su(i,i:i+1) = Sea_sulfate(N-i+1);      % initial value of sulfate in the pore water
end

C_su(:,1) = Sea_sulfate(end);

%% ============ Sr and Sulfate calculation ===========

C_s = zeros(N, J); % in solid (ppm)
C_f = zeros(N, J); % in pore fluid (ppm)


% -----------Initial / Boundary Conditions-----------------

seawater807 = ones(1,N);
solid0 = zeros(1,N);

for i = 1:N
    seawater807(i) = Ca_sea(i)*Solid_Sr_T(i)/10000/K_sr_sea;  % ppm -> mM
    solid0(i) = Solid_Sr_T(i);
end


K = zeros(N,1);     % Sr/Sr2+ coefficient between solid and seawater

for n = 1:N
    K(n) = K_sr_sea / Ca_sea(n)*10000;
end

% assume the initial condition of seawater


for i = 1:N
    C_s(i,i:i+1) = solid0(N-i+1);  %initial value at the lastest deposit carbonate solid
end
C_s(1,2) = solid0(N);

for i = 1:N
    C_f(i, i:i+1) = seawater807(N-i+1);  %initial value at the lastest pore water
end

C_f(2,1) = C_f(2,2)+z_step(2)* gra_sr;

% -----Calculate the first concentration in solid and pore water-

for n = 2:N-1
    
    a10 = 2*D(n-2+1)*t_step/z_step(n-2+2)^2;
    a10_so4 = 2*D_so4(n-2+1)*t_step/z_step(n-2+2)^2;
    b10 = t_step*v/z_step(n-2+2);
    b20 = 2*V*t_step/z_step(n-2+2);
    
    a20 = 2*t_step*R_p(n-1,2)*rho_s/rho_f*(1-phi_z(n-2+2))/phi_z(n-2+2);  % attention the z(2) always represent the bottom
    a30 = R_d(n-1,2)*2*t_step;
 
    
    C_f(n+1,2) = (a10*C_f(n,2+1)+a10*C_f(n,2-1) + (1-a10-a20*k(n-1,2))*C_f(n-1,2) + 2*t_step*R_d(n-1,2)*rho_s/rho_f*(1-phi_z(n-2+2))/phi_z(n-2+2)*C_s(n-1,2)) / (1+a10);
    C_s(n+1,2) = (1-a30)*C_s(n-1,2) + R_p(n-1,2)*2*t_step*k(n-1,2)*C_f(n-1,2);
    
    C_su(n+1,2) = ((a10_so4-b10)*C_su(n,2+1)+(a10_so4+b10)*(C_su(n, 3)+ 2 * z_step(n)* gra_su)+(1-a10_so4)*C_su(n-1,2)-2*t_step*k_su*L*G(n-1,2)*C_su(n-1,2)/(C_su(n-1,2)+Ks))/(1+a10_so4);
    G(n+1,2) = G(n-1,2) * (1 - 2*k_su*t_step*C_su(n-1,2)/(Ks +C_su(n-1,2)));
    
    if C_su(n+1,2) < 0
        C_su(n+1,2) = 0;
    end
    
    for j = 3:n
        
        a1 = 2*D(n-j+1)*t_step/z_step(n-j+2)^2;
        a1_so4 = 2*D_so4(n-j+1)*t_step/z_step(n-j+2)^2;
        b1 = t_step*v/z_step(n-j+2);
        b2 = 2*V*t_step/z_step(n-j+2);
        
        a2 = 2*t_step*R_p(n-1,j)*rho_s/rho_f*(1-phi_z(n-j+2))/phi_z(n-j+2);  % attention the z(2) always represent the bottom
        a3 = R_d(n-1,j)*2*t_step;
        
        C_f(n+1,j) = (a1*C_f(n,j+1)+a1*C_f(n,j-1) + (1-a1-a2*k(n-1,j))*C_f(n-1,j) + 2*t_step*R_d(n-1,j)*rho_s/rho_f*(1-phi_z(n-j+2))/phi_z(n-j+2)*C_s(n-1,j)) / (1+a1);
        C_s(n+1,j) = (1-a3)*C_s(n-1,j) + R_p(n-1,j)*2*t_step*k(n-1,j)*C_f(n-1,j);
        
        C_su(n+1,j) = ((a1_so4-b1)*C_su(n,j+1)+(a1_so4+b1)*C_su(n,j-1)+(1-a1_so4)*C_su(n-1,j)-2*t_step*k_su*L*G(n-1,j)*C_su(n-1,j)/(C_su(n-1,j)+Ks))/(1+a1_so4);
        G(n+1,j) = G(n-1,j) * (1 - 2*k_su*t_step*C_su(n-1,j)/(Ks +C_su(n-1,j))) - b2 * G(n,j+1) + b2 * G(n,j-1);
        
        if C_su(n+1,j) < 0
            C_su(n+1,j) = 0;
        end
        % judge the precipitation of SrSO4
        
        if C_su(n+1,j) * C_f(n+1,j)  >=  K_sp(n+1-j+1)
            C_f(n+1,j) = K_sp(n+1-j+1)/C_su(n+1,j);
        end
    end
    
    C_f(n+1,1) = C_f(n+1,3) + 2*z_step(n+1)* gra_sr;
    C_s(n+1,1) = C_s(n+1,3);
    C_su(n+1,1) = C_su(n+1,3) + 2*z_step(n+1)* gra_su;
    
end

%% =========== simulate the best fit of seawater ==============
number_loops = 2;
Dif=zeros(1,J);
for p = 1:number_loops
    for pp = 1:J
        Dif(pp) = (Solid_Sr_T(pp) - C_s(N,J-pp+1))/K(pp);
    end
    seawater807 = seawater807 + Dif;
    
    
    %re-initialize
    
    G= zeros(N,J);
    G(:,1) = G0;
    G(1,2) = G0;
    
    for i = 1:N
        G(i,i:i+1) = G0;
    end
    
    C_su=zeros(N,J);
    
    %---------boundary condition of sulfate in the pore water---------
    Sea_sulfate=zeros(N,1);
    for i = 1: N
        Sea_sulfate(i) = -0.15 * t(i) + 28;
    end
    
    for i = 1:N
        C_su(i,i:i+1) = Sea_sulfate(N-i+1);      % initial value of sulfate in the pore water
    end
    
    C_su(:,1) = Sea_sulfate(end);
    
    C_s = zeros(N, J); % in solid (ppm)
    C_f = zeros(N, J); % in pore fluid (ppm)
    
    
    %end re-initialize
    
    
    K = zeros(N,1);     % Sr/Sr2+ coefficient between solid and seawater
    
    for n = 1:N
        K(n) = K_sr_sea / Ca_sea(n)*10000;
    end
    
    for i = 1:N
        solid0(i) = K (i) * seawater807(i);
    end
    
    for i = 1:N
        C_s(i,i:i+1) = solid0(N-i+1);  %initial value in solid
    end
    C_s(1,2)=solid0(N);
    
    for i = 1:N
        C_f(i, i:i+1) = seawater807(N-i+1);  %initial value at the lastest pore water
    end
    
    C_f(2,1) = C_f(2,2)+z_step(2)* gra_sr;
    
    for n = 2:N-1
        
        a10 = 2*D(n-2+1)*t_step/z_step(n-2+2)^2;
        a10_so4 = 2*D_so4(n-2+1)*t_step/z_step(n-2+2)^2;
        b10 = t_step*v/z_step(n-2+2);
        b20 = 2*V*t_step/z_step(n-2+2);
        
        a20 = 2*t_step*R_p(n-1,2)*rho_s/rho_f*(1-phi_z(n-2+2))/phi_z(n-2+2);  % attention the z(2) always represent the bottom
        a30 = R_d(n-1,2)*2*t_step;
        
    
        C_f(n+1,2) = (a10*C_f(n,2+1)+a10*C_f(n,2-1) + (1-a10-a20*k(n-1,2))*C_f(n-1,2) + 2*t_step*R_d(n-1,2)*rho_s/rho_f*(1-phi_z(n-2+2))/phi_z(n-2+2)*C_s(n-1,2)) / (1+a10);
        C_s(n+1,2) = (1-a30)*C_s(n-1,2) + R_p(n-1,2)*2*t_step*k(n-1,2)*C_f(n-1,2);
        
        C_su(n+1,2) = ((a10_so4-b10)*C_su(n,2+1)+(a10_so4+b10)*(C_su(n, 3)+ 2 * z_step(n)* gra_su)+(1-a10_so4)*C_su(n-1,2)-2*t_step*k_su*L*G(n-1,2)*C_su(n-1,2)/(C_su(n-1,2)+Ks))/(1+a10_so4);
        G(n+1,2) = G(n-1,2) * (1 - 2*k_su*t_step*C_su(n-1,2)/(Ks +C_su(n-1,2)));
        
        if C_su(n+1,2) < 0
            C_su(n+1,2) = 0;
        end
        
        for j = 3:n
            
            a1 = 2*D(n-j+1)*t_step/z_step(n-j+2)^2;
            a1_so4 = 2*D_so4(n-j+1)*t_step/z_step(n-j+2)^2;
            b1 = t_step*v/z_step(n-j+2);
            b2 = 2*V*t_step/z_step(n-j+2);
            
            a2 = 2*t_step*R_p(n-1,j)*rho_s/rho_f*(1-phi_z(n-j+2))/phi_z(n-j+2);  % attention the z(2) always represent the bottom
            a3 = R_d(n-1,j)*2*t_step;
            
            C_f(n+1,j) = (a1*C_f(n,j+1)+a1*C_f(n,j-1) + (1-a1-a2*k(n-1,j))*C_f(n-1,j) + 2*t_step*R_d(n-1,j)*rho_s/rho_f*(1-phi_z(n-j+2))/phi_z(n-j+2)*C_s(n-1,j)) / (1+a1);
            C_s(n+1,j) = (1-a3)*C_s(n-1,j) + R_p(n-1,j)*2*t_step*k(n-1,j)*C_f(n-1,j);
            
            C_su(n+1,j) = ((a1_so4-b1)*C_su(n,j+1)+(a1_so4+b1)*C_su(n,j-1)+(1-a1_so4)*C_su(n-1,j)-2*t_step*k_su*L*G(n-1,j)*C_su(n-1,j)/(C_su(n-1,j)+Ks))/(1+a1_so4);
            G(n+1,j) = G(n-1,j) * (1 - 2*k_su*t_step*C_su(n-1,j)/(Ks +C_su(n-1,j))) - b2 * G(n,j+1) + b2 * G(n,j-1);
            
            if C_su(n+1,j) < 0
                C_su(n+1,j) = 0;
            end
            % judge the precipitation of SrSO4
            
            if C_su(n+1,j) * C_f(n+1,j)  >=  K_sp(n+1-j+1)
                C_f(n+1,j) = K_sp(n+1-j+1)/C_su(n+1,j);
            end
        end
        
        C_f(n+1,1) = C_f(n+1,3) + 2*z_step(n+1)* gra_sr;
        C_s(n+1,1) = C_s(n+1,3);
        C_su(n+1,1) = C_su(n+1,3) + 2*z_step(n+1)* gra_su;
        
    end
    
    
end


%% ------------------- plot figures ---------------


figure
plot(fliplr(C_f(N,2:J)),z(2:J),'linewidth',2);
set(gca,'Ydir','reverse');  %reverse depth axis
hold on
plot(fliplr(C_f(N-344,1:J-344)),z(1+344:end),'--','linewidth',2)
plot(fliplr(C_f(N-648,1:J-648)),z(1+648:end),':','linewidth',2)
plot(fliplr(C_f(N-952,1:J-952)),z(1+952:end),'-.','linewidth',2)

scatter(Sr/1000,depth,'ko')      % convert from muM to mM
title('Site 807');
xlabel('Sr in pore water (mM)');
ylabel('Present-day depth (m)')
set(gca,'FontSize',12)
legend('t=46.3 m.y.','t=35 m.y.','t=25 m.y.','t=15 m.y.','Sr^{2+} Data','location','SouthWest')
% print('Sr807.jpg','-djpeg','-r600');
% print('Sr807.pdf','-dpdf');
savefig('Sr807.fig');
%--------
figure;
plot(fliplr(C_s(N,2:J))/10,z(2:J),'linewidth',2);
set(gca,'Ydir','reverse');  %reverse depth axis
hold on
scatter(Solid_Sr/10,depth1,'ko')

plot(solid0(1:end-2)/10,z(1:end-2),'--','linewidth',2);

title('Site 807');
xlabel('Sr/Ca in solid carbonate (mM/M)');
ylabel('Present-day depth (m)')
set(gca,'FontSize',12)
legend('Sr/Ca after diagenesis','Sr/Ca measured','Sr/Ca in depositional solid','location','NorthWest');
% print('solid807.jpg','-djpeg','-r600');
% print('solid807.pdf','-dpdf');
savefig('solid807.fig');

%--------
figure;
seawater_ca = zeros(N,1);
for i = 1:N
    seawater_ca (i) = seawater807(i)/Ca_sea(i);
end
plot(t(1:end-2),seawater_ca(1:end-2)*1000,'linewidth',2)      %convect Sr/Ca mM/mM to uM/mM

% seawater data from paper (Coggon 2010, green line)
Time00=[0.821917808000000;3.01369863000000;6.02739726000000;8.76712328800000;11.5068493200000;13.6986301400000;19.7260274000000;25.2054794500000;29.8630137000000;32.6027397300000;34.7945205500000;37.5342465800000;41.0958904100000;44.3835616400000;47.9452054800000;50.6849315100000;52.8767123300000;55.0684931500000;57.2602739700000;61.3698630100000];
seawater_ca_data=[9.03943412500000;9.20790650400000;8.37112027000000;8.37221353700000;8.65263641200000;8.65351102600000;8.37658660300000;8.15530944900000;8.04543615900000;7.82306573800000;7.71220850800000;7.65743585300000;7.54712525600000;7.66016901900000;7.82918803100000;7.77441537600000;7.66355814500000;7.94376236800000;8.50329619900000;8.72839978600000];
seawater00=seawater_ca_data*1.03/100;    % convect Sr/Ca mMol/Mol to mM Sr in seawater

hold on
scatter(Time00,seawater_ca_data,'ko')

title('Sr/Ca in seawater vs time (m.y.)');
xlabel('Time (m.y.)');
ylabel('Sr/Ca (\muM/mM) in seawater')
set(gca,'FontSize',12)

% pick sample to output

data_index=[];  % sample index
for ii = 1:length(depth1)
    
    for jj = 1:(length(z)-1)
        
        if z (jj) <= depth1 (ii) && z (jj+1) > depth1 (ii)
            data_index = [data_index,jj];
        end
    end
end

% data output corresponds to the collected solid samples
t_output = t(data_index);
seawater_output = seawater807(data_index);

seawater_ca_output =seawater_ca(data_index);

scatter(t_output,seawater_ca_output*1000,'r*')

legend('Simulated Sr/Ca','Data collected from foraminifera','Selected output from simulation')


% --------

newName = 'Sr807';
S.(newName) = seawater_ca_output;

newName = 't807';
S.(newName) = t_output;

newName = 'z807';
S.(newName) = z;

newName = 'Rd807';
S.(newName) = fliplr(R_d(N,:));
save('data807.mat', '-struct', 'S'); 

save('seawater807.mat','seawater807');