#' @title Sampling Distribution
#'
#' @param samples Specify how many samples to run
#' @param sample_size the number of observations in each sample
#' @param mean population mean
#' @param sd population standard deviation
#'
#' @export
#'




samplingDist <- function(samples = 50, sample_size = 100, mean = 0, sd = 1){   # The = sign sets a default value

  sampleMeans <- rep(NA,samples)       # Create empty vector of size "samples"

  for(i in 1:samples){
    x <- rnorm(sample_size, mean = mean, sd = sd)
    sampleMeans[i] = mean(x)
  }
  return(sampleMeans)
}
