

#' Writing of quantification and quality information of fitting of signals
#'
#' @param export_path Export path where the RData and the associated data is stored.
#' @param final_output List with quantifications and indicators of quality of quantification.
#' @param ROI_data ROIs data.
#'
#' @return RData with session and 'associated_data' folder with CSVs with quantification and quality information of fitting of signals.
#' @export write_info
#'
#' @examples
#' setwd(paste(system.file(package = "rDolphin"),"extdata",sep='/'))
#' load("MTBLS242_subset_profiling_data.RData")
#' write_info('output_info',profiling_data$final_output,imported_data$ROI_data)

write_info = function(export_path, final_output,ROI_data) {
  dir.create(export_path)
 if (ncol(ROI_data)==12) {
   write.csv(rbind(ROI_data[,12],final_output$quantification),
    file.path(export_path,
      "quantification.csv"))
  write.csv(rbind(ROI_data[,12],final_output$chemical_shift),
    file.path(export_path,
      "chemical_shift.csv"))
  write.csv(rbind(ROI_data[,12],final_output$half_bandwidth),
    file.path(export_path,
      "half_bandwidth.csv"))
  write.csv(
    rbind(ROI_data[,12],final_output$signal_area_ratio),
    file.path(export_path,
      "signal_area_ratio.csv")
  )
  write.csv(
    rbind(ROI_data[,12],final_output$fitting_error),
    file.path(export_path,
      "fitting_error.csv")
  )
  write.csv(
	rbind(ROI_data[,12],final_output$intensity),
    file.path(export_path,
      "intensity.csv")
  )
  } else {
    write.csv(final_output$quantification,
              file.path(export_path,
                        "quantification.csv"))
    write.csv(final_output$chemical_shift,
              file.path(export_path,
                        "chemical_shift.csv"))
    write.csv(final_output$half_bandwidth,
              file.path(export_path,
                        "half_bandwidth.csv"))
    write.csv(
      final_output$signal_area_ratio,
      file.path(export_path,
                "signal_area_ratio.csv")
    )
    write.csv(
      final_output$fitting_error,
      file.path(export_path,
                "fitting_error.csv")
    )
    write.csv(
     final_output$intensity,
      file.path(export_path,
                "intensity.csv")
    )

  }
  write.csv(ROI_data,file.path(export_path,"ROI_profiles_used.csv"),row.names=F)

}

