all: energy_cut2 all_sipm_pair_time_differences twod_channel_coincidence branch_cutter voltages_and_time_differences peak_energy_and_over_voltage energy_threshold_resolution_fit polygamma_fit

energy_cut2: energy_cut2.c
	g++ -o energy_cut2 energy_cut2.c `root-config --cflags --libs`

all_sipm_pair_time_differences: all_sipm_pair_time_differences.c
	g++ -o all_sipm_pair_time_differences all_sipm_pair_time_differences.c `root-config --cflags --libs`

twod_channel_coincidence: twod_channel_coincidence.c
	g++ -o twod_channel_coincidence twod_channel_coincidence.c `root-config --cflags --libs`

branch_cutter: branch_cutter.c
	g++ -o branch_cutter branch_cutter.c `root-config --cflags --libs`

voltages_and_time_differences: voltages_and_time_differences.c
	g++ -o voltages_and_time_differences voltages_and_time_differences.c `root-config --cflags --libs`

peak_energy_and_over_voltage: peak_energy_and_over_voltage.c
	g++ -o peak_energy_and_over_voltage peak_energy_and_over_voltage.c `root-config --cflags --libs`

energy_threshold_resolution_fit: energy_threshold_resolution_fit.c
	g++ -o energy_threshold_resolution_fit energy_threshold_resolution_fit.c  `root-config --cflags --libs` -lSpectrum

polygamma_fit: polygamma_fit.c
	g++ -o polygamma_fit polygamma_fit.c `root-config --cflags --libs` -lSpectrum -lgsl

data_analysis: data_analysis.c
	g++ -o data_analysis dtaa_analysis.c `root-config --cflags --libs` -lgsl

data_extractor: data_extractor.c
	g++ -o data_extractor data_extractor.c `root-config --cflags --libs` -lSpectrum
