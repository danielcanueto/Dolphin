save_output=function(spectrum_index,signals_codes,results_to_save,buck_step,final_output) {
  #Created by Daniel Canueto 30/08/2016
  #Save quantification, $chemical_shift, fitting error and signal area ratio.
  
             final_output$quantification[spectrum_index,signals_codes]=results_to_save$quantification
             final_output$fitting_error[spectrum_index,signals_codes]=results_to_save$fitting_error 
             final_output$signal_area_ratio[spectrum_index,signals_codes]=results_to_save$signal_area_ratio
             final_output$chemical_shift[spectrum_index,signals_codes]=results_to_save$chemical_shift
             final_output$intensity[spectrum_index,signals_codes]=results_to_save$intensity
             final_output$half_bandwidth[spectrum_index,signals_codes]=results_to_save$half_bandwidth
             
      return(final_output)         
}