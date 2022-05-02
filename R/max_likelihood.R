#' Maximum likelihood parameter estimation
#'
#' @param .data A data vector
#'
#' @return
#' @export
#'
#' @examples


max_likelihood = function(.data){
  n = length(.data)
  t = .data

  l = function(sigma){
    theta = sigma[1]
    nu = sigma[2]
    gamma = sigma[3]

    logl = n*(log(nu) - log(gamma) - nu*log(theta) + 1) +
      (nu - 1)*sum(log(t)) +
      ((1/gamma) - 1)*sum(log(1 + (t/theta)^nu)) -
      sum(1 + (t/theta)^nu)^(1/gamma)

    return(-logl)
  }

  nlminb(c(1, 1, 1), l,
         lower = c(0,0,0),
         upper = c(Inf, Inf, Inf),
         control = list(trace = 1))
}
