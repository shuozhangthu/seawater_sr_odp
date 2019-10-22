The code folder contains the matlab code used to run the 1D coupled depositional and diagenetic model.

age.xlsx file contains the information on sediment age and depth, which is used to calculate sedimentation rate.

SrCaSolid.xlsx contains the data on the Sr/Ca ratio in the bulk solid of carbonate sediments.

water.xlsx contains the measured concentrations of pore fluid chemical components, including sulfate, Ca and Sr.

The order of files to run in order to reproduce the resutls in Zhang et al. (2020) is: sulfate_807_run.m, Ca_807_run.m, and Sr_807_run.m. The run files will call the corresponding main files, which will use the functions defined in the function files. 

R_d.m, seawater.m, f_arag_cal.m and combine_image.m are used to produce the figures in the paper.