#' Shows vaccine names
#'
#' @param data
#'
#' @return A sorted table of vaccines names
#' @export
#'
#' @examples show_vaccines() # default is 2020
#' @examples show_vaccines(data = vaers_2019)
#' @examples vaers_2017 %>% show_vaccines()

show_vaccines = function(data = vaers_2020){
  sort(table(data$vax_name), decreasing = TRUE)[1:50]
}
