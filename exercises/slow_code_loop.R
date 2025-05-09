# Example from https://stackoverflow.com/questions/2908822/speed-up-the-loop-operation-in-r

dayloop2 <- function(temp) {
  for (i in 1:nrow(temp)) {
    temp[i, 10] <- i
    if (i > 1) {
      if ((temp[i, 6] == temp[i - 1, 6]) & (temp[i, 3] == temp[i - 1, 3])) {
        temp[i, 10] <- temp[i, 9] + temp[i - 1, 10]
      } else {
        temp[i, 10] <- temp[i, 9]
      }
    } else {
      temp[i, 10] <- temp[i, 9]
    }
  }
  names(temp)[names(temp) == "V10"] <- "Kumm."
  return(temp)
}
