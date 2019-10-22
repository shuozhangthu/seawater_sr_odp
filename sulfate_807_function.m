function C = sulfate_function_807(x,xdata)


G0 = x(1);  %[mM/1 porewater]  by fitting
k_su=x(2);
v=x(3);
Ks = x(4);
gra_su=x(5);


L = 0.5;
z_step=[0;1;1;1;1;1;1;1;1;1;1;1;1;1;0.990000000000000;0.990000000000000;0.990000000000000;0.990000000000000;0.990000000000000;0.990000000000000;0.990000000000000;0.990000000000000;0.990000000000000;1;1;0.990000000000000;0.990000000000000;0.990000000000000;0.980000000000000;0.980000000000000;0.980000000000000;0.980000000000000;0.980000000000000;0.980000000000000;0.980000000000000;0.980000000000000;0.990000000000000;0.980000000000000;0.990000000000000;0.990000000000000;0.980000000000000;0.990000000000000;0.980000000000000;0.980000000000000;0.970000000000000;0.970000000000000;0.970000000000000;0.970000000000000;0.970000000000000;0.970000000000000;0.970000000000000;0.970000000000000;0.970000000000000;0.970000000000000;0.970000000000000;0.970000000000000;0.970000000000000;0.970000000000000;0.960000000000000;0.960000000000000;0.960000000000000;0.960000000000000;0.960000000000000;0.960000000000000;0.960000000000000;0.960000000000000;0.950000000000000;0.960000000000000;0.970000000000000;0.970000000000000;0.950000000000000;0.970000000000000;0.970000000000000;0.950000000000000;0.950000000000000;0.950000000000000;0.950000000000000;0.950000000000000;0.950000000000000;0.950000000000000;0.950000000000000;0.950000000000000;0.950000000000000;0.950000000000000;0.950000000000000;0.950000000000000;0.950000000000000;0.950000000000000;0.950000000000000;0.950000000000000;0.950000000000000;0.940000000000000;0.940000000000000;0.940000000000000;0.940000000000000;0.940000000000000;0.940000000000000;0.940000000000000;0.940000000000000;0.940000000000000;0.940000000000000;0.940000000000000;0.940000000000000;0.940000000000000;0.940000000000000;0.940000000000000;0.940000000000000;0.940000000000000;0.940000000000000;0.930000000000000;0.930000000000000;0.930000000000000;0.930000000000000;0.930000000000000;0.930000000000000;0.930000000000000;0.930000000000000;0.930000000000000;0.930000000000000;0.930000000000000;0.930000000000000;0.930000000000000;0.930000000000000;0.930000000000000;0.930000000000000;0.930000000000000;0.930000000000000;0.930000000000000;0.920000000000000;0.920000000000000;0.920000000000000;0.920000000000000;0.920000000000000;0.920000000000000;0.920000000000000;0.920000000000000;0.920000000000000;0.920000000000000;0.920000000000000;0.920000000000000;0.920000000000000;0.920000000000000;0.920000000000000;0.920000000000000;0.920000000000000;0.920000000000000;0.920000000000000;0.920000000000000;0.910000000000000;0.910000000000000;0.920000000000000;0.910000000000000;0.910000000000000;0.910000000000000;0.910000000000000;0.910000000000000;0.910000000000000;0.910000000000000;0.910000000000000;0.910000000000000;0.910000000000000;0.910000000000000;0.910000000000000;0.910000000000000;0.910000000000000;0.910000000000000;0.910000000000000;0.910000000000000;0.910000000000000;0.900000000000000;0.900000000000000;0.900000000000000;0.900000000000000;0.900000000000000;0.900000000000000;0.900000000000000;0.900000000000000;0.900000000000000;0.900000000000000;0.900000000000000;0.900000000000000;0.900000000000000;0.900000000000000;0.900000000000000;0.900000000000000;0.900000000000000;0.900000000000000;0.900000000000000;0.900000000000000;0.900000000000000;0.900000000000000;0.890000000000000;0.890000000000000;0.890000000000000;0.900000000000000;0.890000000000000;0.900000000000000;0.900000000000000;0.890000000000000;0.900000000000000;0.900000000000000;0.900000000000000;0.890000000000000;0.900000000000000;0.890000000000000;0.890000000000000;0.900000000000000;0.890000000000000;0.900000000000000;0.900000000000000;0.890000000000000;0.900000000000000;0.900000000000000;0.900000000000000;0.880000000000000;0.880000000000000;0.880000000000000;0.890000000000000;0.880000000000000;0.880000000000000;0.880000000000000;0.880000000000000;0.880000000000000;0.880000000000000;0.880000000000000;0.880000000000000;0.880000000000000;0.880000000000000;0.880000000000000;0.880000000000000;0.880000000000000;0.880000000000000;0.880000000000000;0.880000000000000;0.880000000000000;0.880000000000000;0.880000000000000;0.880000000000000;0.880000000000000;0.870000000000000;0.870000000000000;0.870000000000000;0.870000000000000;0.870000000000000;0.870000000000000;0.870000000000000;0.870000000000000;0.870000000000000;0.870000000000000;0.870000000000000;0.870000000000000;0.870000000000000;0.870000000000000;0.870000000000000;0.870000000000000;0.870000000000000;0.870000000000000;0.870000000000000;0.870000000000000;0.870000000000000;0.860000000000000;0.870000000000000;0.870000000000000;0.870000000000000;0.870000000000000;0.870000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.860000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.850000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.840000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.840000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.830000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.820000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.810000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.790000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.800000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.790000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.790000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.780000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.770000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.760000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.750000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.740000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.720000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.730000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.720000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.710000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.700000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.690000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000;0.680000000000000];
J = length(z_step);
N = J;

t_step = 0.032923143432439;
t = zeros(N,1);
z = zeros(N,1);

V=0;

for i = 2:N
    t(i) = t(i-1) + t_step;
end

for i = 2:N
    z(i) = z(i-1) + z_step(i);
end

C_su=zeros(N,J);
f_a = 0;
f_b = 69.6/100;
f_c = 1/0.00051;


phi_z = f_a + f_b*exp(-z/f_c);  % porosity over depth

temp_T = 0.01633*z+274.9;

D0 = zeros(length(z),1);
D_so4 = zeros(length(z),1);
for i = 1:length(z)
    D0(i) = (3.69+ 0.169 * (temp_T(i)-273.15)) * 3.65 * 24 * 36;
    D_so4(i) = D0(i) / (1-log(phi_z(i)^2))*1.53;
end

% =========== boundary condition============

Sea_sulfate = zeros(N,1);

for i = 1: N
    Sea_sulfate(i) = -0.15 * t(i) + 28;
end

for i = 1:N
    C_su(i,i:(i+1)) = Sea_sulfate(N-i+1);      % initial value of sulfate in the pore water
end

C_su(:,1) = 0;

G=zeros(N,J);






G(:,1) = G0;
G(1,2) = G0;

for i = 1:N
    G(i,i:i+1) = G0;
end

for n = 2:N-1
    
    a10 = 2*D_so4(n-2+1)*t_step/z_step(n-2+2)^2;
    
    b10 = t_step*v/z_step(n-2+2);
    b20 = 2*V*t_step/z_step(n-2+2);
    
    C_su(n+1,2) = ((a10-b10)*C_su(n,2+1)+(a10+b10)*(C_su(n, 3)+ 2 * z_step(n)* gra_su)+(1-a10)*C_su(n-1,2)-2*t_step*k_su*L*G(n-1,2)*C_su(n-1,2)/(C_su(n-1,2)+Ks))/(1+a10);
    
    G(n+1,2) = G(n-1,2) * (1 - 2*k_su*t_step*C_su(n-1,2)/(Ks +C_su(n-1,2)));
    
    if C_su(n+1,2) < 0
        C_su(n+1,2) = 0;
    end
    
    for j = 3:n
        
        a1 = 2*D_so4(n-j+1)*t_step/z_step(n-j+2)^2;
        
        b1 = t_step*v/z_step(n-j+2);
        b2 = 2*V*t_step/z_step(n-j+2);
        
        C_su(n+1,j) = ((a1-b1)*C_su(n,j+1)+(a1+b1)*C_su(n,j-1)+(1-a1)*C_su(n-1,j)-2*t_step*k_su*L*G(n-1,j)*C_su(n-1,j)/(C_su(n-1,j)+Ks))/(1+a1);
        
        G(n+1,j) = G(n-1,j) * (1 - 2*k_su*t_step*C_su(n-1,j)/(Ks +C_su(n-1,j))) - b2 * G(n,j+1) + b2 * G(n,j-1);
        
        if C_su(n+1,j) < 0
            C_su(n+1,j) = 0;
        end
        
    end
    
end

C_su(:,1)=C_su(:,2);
G(:,1)=G(:,2);

C=interp1(z(1:N),fliplr(C_su(N,1:J)),xdata);




