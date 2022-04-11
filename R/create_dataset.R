#' Title
#'
#' @param vaxname Name of the vaccine you want to filter for
#' @param data One of the vaers datasets from this package
#'
#' @return Returns the filtered dataset with a new column order.
#' @export
#'
#' @examples create_dataset("COVID19 (COVID19 (JANSSEN))", vaers_2017)

create_dataset = function(vaxname, data = vaers_2020){
  data = data %>%
           dplyr::filter(vax_name==vaxname, numdays <= 365, numdays > 0) %>%
           dplyr::select(vaers_id,vax_type,vax_manu,vax_name,numdays, 53:dim(data)[2], everything())
  return(data)
}
