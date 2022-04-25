#' Title
#'
#' @param .data One of the vaers datasets or the output of the create_dummy function from this package
#' @param vaxname Name of the vaccine you want to filter for. Please use: sort(table(vaers_20xx$vax_name), decreasing =T) to get a list of the vaccines
#'
#' @return Returns the filtered dataset with a new column order.
#' @export
#'
#' @examples create_dataset(vaers_2020, "COVID19 (COVID19 (JANSSEN))")
#' @examples create_dataset(.data = vaers_2020, vaxname = "COVID19 (COVID19 (JANSSEN))")
#' @examples vaers_2020 %>% create_dataset(vaxname = "COVID19 (COVID19 (JANSSEN))")
#' @examples vaers_2018 %>% create_dummy("headache", c("Headache")) %>% create_dataset("ZOSTER (SHINGRIX)")
#' @examples vaers_2018 %>% create_dummy("headache", c("Headache")) %>% create_dummy("breathlessness", c("Breathlessness")) %>%  create_dataset("ZOSTER (SHINGRIX)")



create_dataset = function(.data = vaers_2020, vaxname = "ZOSTER (SHINGRIX)"){
  .data = .data %>%
           dplyr::filter(vax_name==vaxname, numdays <= 365, numdays > 0) %>%
           dplyr::select(vaers_id,vax_type,vax_manu,vax_name,numdays, 52:dim(.data)[2], everything()) %>%
          dplyr::select(-symptomversion5)
  return(.data)
}

