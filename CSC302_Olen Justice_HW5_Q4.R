library(tidyr)
library(dplyr)
library(lubridate)
library(ggplot2)

load("G:/My Drive/house_prices.rda")

house_prices %>%
  gather(key=measure, value=value, -c(house_price_index, date, state)) %>%
  ggplot(aes(x=date, y=value, color=measure)) +
  geom_line() +
  facet_wrap(~state) +
  scale_x_continuous(breaks = ymd(c("1980-01-01", "2000-01-01", "2020-01-01")), labels = c("80", "00", "20"))
