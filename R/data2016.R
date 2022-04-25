#' Data from the Vaccine Adverse Event Reporting System (VAERS)
#'
#' Contains 70244 observations of 52 variables
#'
#'@format A data frame with 52 variables:
#' \describe{
#'     \item{vaers_id}{VAERS identification number}
#'     \item{vax_type}{Administered vaccine type}
#'     \item{vax_manu}{Vaccine manufacturer}
#'     \item{vax_lot}{Manufacturer’s vaccine lot}
#'     \item{vax_dose_series}{Number of doses administered}
#'     \item{vax_route}{Vaccination route}
#'     \item{vax_site}{Vaccination site}
#'     \item{vax_name}{Vaccination name}
#'     \item{recvdate}{Date report was received}
#'     \item{state}{State}
#'     \item{age_yrs}{Age in years}
#'     \item{cage_yr}{Calculated age of patient in years}
#'     \item{cage_mo}{Calculated age of patient in months}
#'     \item{sex}{Sex}
#'     \item{rpt_date}{Date form completed}
#'     \item{symptom_text}{Reported symptom text}
#'     \item{died}{Died}
#'     \item{datedied}{Date of death}
#'     \item{l_threat}{Life-threatening illness}
#'     \item{er_visit}{Emergency room or doctor visit }
#'     \item{hospital}{Hospitalized}
#'     \item{hospdays}{Number of days hospitalized}
#'     \item{x_stay}{Prolongation of existing hospitalization}
#'     \item{disable}{Disability}
#'     \item{recovd}{Recovered}
#'     \item{vax_date}{Vaccination date}
#'     \item{onset_date}{Adverse event onset date}
#'     \item{numdays}{Number of days (onset date – vaccination date)}
#'     \item{lab_data}{Diagnostic laboratory data}
#'     \item{v_adminby}{Type of facility where vaccine was administered}
#'     \item{v_fundby}{Type of funds used to purchase vaccines}
#'     \item{other_meds}{Other medications}
#'     \item{cur_ill}{Illnesses at time of vaccination}
#'     \item{history}{Chronic or long-standing health conditions}
#'     \item{prior_vax}{Prior vaccination event information}
#'     \item{splittype}{Manufacturer/immunization project report number}
#'     \item{form_vers}{VAERS form version 1 or 2}
#'     \item{todays_date}{Date Form Completed}
#'     \item{birth_defect}{Congenital anomaly or birth defect}
#'     \item{ofc_visit}{Doctor or other healthcare provider office/clinic visit}
#'     \item{er_ed_visit}{Emergency room/ department or urgent care}
#'     \item{allergies}{Allergies to medications, food, or other products}
#'     \item{symptom1}{Adverse event MedDRA term 1}
#'     \item{symptomversion1}{MedDRA dictionary version 1}
#'     \item{symptom2}{Adverse event MedDRA term 2}
#'     \item{symptomversion2}{MedDRA dictionary version 2}
#'     \item{symptom3}{Adverse event MedDRA term 3}
#'     \item{symptomversion3}{MedDRA dictionary version 3}
#'     \item{symptom4}{Adverse event MedDRA term 4}
#'     \item{symptomversion4}{MedDRA dictionary version 4}
#'     \item{symptom5}{Adverse event MedDRA term 5}
#'     \item{symptomversion5}{MedDRA dictionary version 5}
#'     }
#'
#' @source {Vaccine Adverse Event Reporting System}
#'
#' @examples
#' data(vaers_2016) # lazy loading. Data becomes visible as soon as its loaded.
"vaers_2016"
