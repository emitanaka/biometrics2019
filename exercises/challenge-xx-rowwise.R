
# rounding for averages needed to get the same result as paper


signal_cdat2 <- mutate(signal_cdat, 
                       # rounding needed to get the same result as paper
                       xbara = round(rowMeans(cbind(alternative1, alternative2, alternative3))),
                       xbars = round((standard1 + standard2 + standard3) / 3),
                       score = (xbars - xbara) / (xbars + xbara))

signal_cdat2 <- signal_cdat %>% 
  rowwise() %>% 
  mutate(xbara = round(mean(c(alternative1, alternative2, alternative3))),
         xbars = round(mean(c(standard1, standard2, standard3))),
         score = (xbars - xbara) / (xbars + xbara)) %>% 
  ungroup()
