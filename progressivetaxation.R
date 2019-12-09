library(tidyverse)


check.taxes <- function(x) {
  x <- as.numeric(readline(prompt="Enter Income (numbers only): "))
  marginal.tax.rates <- cbind.data.frame(c(10000, 30000, 100000, 100001), c(0,.1,.25,.4))
  rownames(marginal.tax.rates) <- c("10K", "30K","100K", "Over 100K")
  colnames(marginal.tax.rates) <- c("Income", "Tax Rates")
  #Find out what the marginal tax rate is!
  #Then add up total income!
  #Print out final outline!
  print(c("You have to pay",x," dollars in taxes!"),sep)
  }

check.taxes()
check.taxes

taxes.owed <- case_when(
  my.income <= 10000 ~ 0,
  10000 < my.income <= 30000 ~ my.income*.1,
  30000 < my.income <= 100000 ~ my.income*.25,
  my.income > 100000 ~ my.income*.4)
