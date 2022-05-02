#' Creating a new dummy-variable
#'
#' @param data A dataset from the vaers datasets in this package (named "vaers_20xx")
#' @param name The name the new variable should have
#' @param symptoms A vector of strings (symptoms) for which the function should search
#'
#' @return Returns the input dataset with a new dummy-variable attached
#' @export
#'
#' @examples create_dummy(vaers_2018, "breathlessness", c("Breathlessness"))
#' @examples create_dummy(data = vaers_2018, name = "breathlessness", symptoms = c("Breathlessness"))
#' @examples vaers_2020 %>% create_dummy("fatigue", c("Fatigue", "Lethargy", "Somnolence", "Asthenia", "Hypersomnia", "Depressed level of consciousness"))


create_dummy = function(data = vaers_2020, name = "newdummy", symptoms){
  string = paste0("[", toupper(substr(symptoms[1],1,1)), tolower(substr(symptoms[1],1,1)), "]", substr(symptoms[1],2,nchar(symptoms[1])))

  for (i in 2:length(symptoms)){
    string = paste0(string, "|", paste0("[", toupper(substr(symptoms[i],1,1)), tolower(substr(symptoms[i],1,1)), "]", substr(symptoms[i],2,nchar(symptoms[i]))))
  }

  index = c(grep(string, data$symptom1),
            grep(string, data$symptom2),
            grep(string, data$symptom3),
            grep(string, data$symptom4),
            grep(string, data$symptom5))

  dummy = rep(0, length(data[,1]))
  dummy[index] = 1
  data = cbind(data, dummy)
  names(data)[names(data) == "dummy"] = name
  return(data)
}


