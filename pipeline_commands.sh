#!/bin/bash

# # simulate the data sets
# cd semi_parametric_sim
# Rscript -e "rmarkdown::render('datasets_simulation.Rmd')"
# # assess the quality of the simulated data sets
# Rscript -e "rmarkdown::render('assess_simdata_qual.Rmd')"
# cd ..
#
# ## preprocess the simulated data sets
# cd summarized_benchmark
# Rscript -e "rmarkdown::render('prepare_datasets.Rmd')"
# ## compute the benchmark performance
# Rscript -e "rmarkdown::render('benchmark.Rmd')"
# ## collect and plot the performance evaluations
# Rscript -e "rmarkdown::render('evaluations.Rmd')"
# ## compute quality statistics on the simulated data sets after the pre-processing
# Rscript -e "rmarkdown::render('preprocessed_dataset_sim_qual.Rmd')"

################ MS simulations ################
# simulate the data sets
# cd semi_parametric_sim
# Rscript -e "rmarkdown::render('datasets_simulation_MS.Rmd')"
# # assess the quality of the simulated data sets
# # Rscript -e "rmarkdown::render('assess_simdata_qual.Rmd')"
# cd ..

## preprocess the simulated data sets
cd summarized_benchmark
Rscript -e "rmarkdown::render('prepare_datasets_tmpl.Rmd', params = list(outdir = 'MS_prep_ds', simulated_datasets_qs = '../semi_parametric_sim/MS_sims/trimmed_simulated_datasets.qs'), output_file = 'prepare_datasets_MS.html')"
## compute the benchmark performance
Rscript -e "rmarkdown::render('benchmark.Rmd', params = list(outdir = 'MS_benchmark_results', inputData = './MS_prep_ds/datasetList.qs'), output_file = 'benchmark_MS.html')"
## collect and plot the performance evaluations
Rscript -e "rmarkdown::render('evaluations.Rmd', params = list(output_dir = 'MS_evaluations', simulated_datasets_qs = 'MS_prep_ds/datasetList.qs', sumBench_perf_metrics_qs = 'MS_benchmark_results/sumBench_perf_metrics.qs', sice = TRUE), output_file = 'evaluations_MS.html')"
## compute quality statistics on the simulated data sets after the pre-processing
Rscript -e "rmarkdown::render('preprocessed_dataset_sim_qual.Rmd', params = list(simulated_datasets_qs = 'MS_prep_ds/datasetList.qs', outdir = 'MS_processed_ds_stats'), output_file = 'preprocessed_dataset_sim_qual_MS.html')"

################ DM1 simulations ################
# # simulate the data sets
# cd semi_parametric_sim
# Rscript -e "rmarkdown::render('datasets_simulation_DM1.Rmd')"
# # assess the quality of the simulated data sets
# # Rscript -e "rmarkdown::render('assess_simdata_qual.Rmd')"
# cd ..

## preprocess the simulated data sets
cd summarized_benchmark
Rscript -e "rmarkdown::render('prepare_datasets_tmpl.Rmd', params = list(outdir = 'DM1_prep_ds', simulated_datasets_qs = '../semi_parametric_sim/DM1_sims/trimmed_simulated_datasets.qs'), output_file = 'prepare_datasets_DM1.html')"
## compute the benchmark performance
Rscript -e "rmarkdown::render('benchmark.Rmd', params = list(outdir = 'DM1_benchmark_results', inputData = './DM1_prep_ds/datasetList.qs'), output_file = 'benchmark_DM1.html')"
## collect and plot the performance evaluations
Rscript -e "rmarkdown::render('evaluations.Rmd', params = list(output_dir = 'DM1_evaluations', simulated_datasets_qs = 'DM1_prep_ds/datasetList.qs', sumBench_perf_metrics_qs = 'DM1_benchmark_results/sumBench_perf_metrics.qs', sice = FALSE), output_file = 'evaluations_DM1.html')"
## compute quality statistics on the simulated data sets after the pre-processing
Rscript -e "rmarkdown::render('preprocessed_dataset_sim_qual.Rmd', params = list(simulated_datasets_qs = 'DM1_prep_ds/datasetList.qs', outdir = 'DM1_processed_ds_stats'), output_file = 'preprocessed_dataset_sim_qual_DM1.html')"

################ IPF simulations ################
# # simulate the data sets
# cd semi_parametric_sim
# Rscript -e "rmarkdown::render('datasets_simulation_IPF.Rmd')"
# # assess the quality of the simulated data sets
# # Rscript -e "rmarkdown::render('assess_simdata_qual.Rmd')"
# cd ..

## preprocess the simulated data sets
cd summarized_benchmark
Rscript -e "rmarkdown::render('prepare_datasets_tmpl.Rmd', params = list(outdir = 'IPF_prep_ds', simulated_datasets_qs = '../semi_parametric_sim/IPF_sims/trimmed_simulated_datasets.qs'), output_file = 'prepare_datasets_IPF.html')"
## compute the benchmark performance
Rscript -e "rmarkdown::render('benchmark.Rmd', params = list(outdir = 'IPF_benchmark_results', inputData = './IPF_prep_ds/datasetList.qs'), output_file = 'benchmark_IPF.html')"
## collect and plot the performance evaluations
Rscript -e "rmarkdown::render('evaluations.Rmd', params = list(output_dir = 'IPF_evaluations', simulated_datasets_qs = 'IPF_prep_ds/datasetList.qs', sumBench_perf_metrics_qs = 'IPF_benchmark_results/sumBench_perf_metrics.qs', sice = FALSE), output_file = 'evaluations_IPF.html')"
## compute quality statistics on the simulated data sets after the pre-processing
Rscript -e "rmarkdown::render('preprocessed_dataset_sim_qual.Rmd', params = list(simulated_datasets_qs = 'IPF_prep_ds/datasetList.qs', outdir = 'IPF_processed_ds_stats'), output_file = 'preprocessed_dataset_sim_qual_IPF.html')"

################ IDC simulations ################
# # simulate the data sets
# cd semi_parametric_sim
# Rscript -e "rmarkdown::render('datasets_simulation_IDC.Rmd')"
# # assess the quality of the simulated data sets
# # Rscript -e "rmarkdown::render('assess_simdata_qual.Rmd')"
# cd ..

## preprocess the simulated data sets
cd summarized_benchmark
Rscript -e "rmarkdown::render('prepare_datasets_tmpl.Rmd', params = list(outdir = 'IDC_prep_ds', simulated_datasets_qs = '../semi_parametric_sim/IDC_sims/trimmed_simulated_datasets.qs'), output_file = 'prepare_datasets_IDC.html')"
## compute the benchmark performance
Rscript -e "rmarkdown::render('benchmark.Rmd', params = list(outdir = 'IDC_benchmark_results', inputData = './IDC_prep_ds/datasetList.qs'), output_file = 'benchmark_IDC.html')"
## collect and plot the performance evaluations
Rscript -e "rmarkdown::render('evaluations.Rmd', params = list(output_dir = 'IDC_evaluations', simulated_datasets_qs = 'IDC_prep_ds/datasetList.qs', sumBench_perf_metrics_qs = 'IDC_benchmark_results/sumBench_perf_metrics.qs', sice = FALSE), output_file = 'evaluations_IDC.html')"
## compute quality statistics on the simulated data sets after the pre-processing
Rscript -e "rmarkdown::render('preprocessed_dataset_sim_qual.Rmd', params = list(simulated_datasets_qs = 'IDC_prep_ds/datasetList.qs', outdir = 'IDC_processed_ds_stats'), output_file = 'preprocessed_dataset_sim_qual_IDC.html')"
