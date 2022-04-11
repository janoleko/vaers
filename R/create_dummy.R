#' Title
#'
#' @param name The name the new variable should have
#' @param symptoms A vector of strings (symptoms) for which the function should search
#' @param data A dataset from the vaers datasets in this package
#'
#' @return Returns the dataset with a new variable
#' @export
#'
#' @examples create_dummy("breathlessness", c("Breathlessness"), vaers_2018))


create_dummy = function(name = "newdummy", symptoms, data = vaers_2021){
  string = paste0("[", toupper(substr(symptoms[1],1,1)), tolower(substr(symptoms[1],1,1)), "]", substr(symptoms[1],2,nchar(symptoms[1])))

  for (i in 2:length(vector)){
    string = paste0(string, "|", paste0("[", toupper(substr(symptoms[i],1,1)), tolower(substr(symptoms[i],1,1)), "]", substr(symptoms[i],2,nchar(symptoms[i]))))
  }

  index = c(grep(string, data$symptom1),
            grep(string, data$symptom1),
            grep(string, data$symptom1),
            grep(string, data$symptom1),
            grep(string, data$symptom1))

  dummy = rep(0, length(data[,1]))
  dummy[index] = 1
  data = cbind(data, dummy)
  names(data)[names(data) == "dummy"] = name
  return(data)
}


