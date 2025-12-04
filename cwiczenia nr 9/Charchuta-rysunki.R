library(dplyr)
library(ggplot2)

data(ToothGrowth)
head(ToothGrowth)

ggplot(ToothGrowth, aes(x = factor(dose), y = len, fill = supp)) +
        geom_boxplot(position = position_dodge(width = 0.8)) +
        scale_fill_manual(values = c("lightblue", "salmon")) +
        labs(x = "Dose", y = "len", fill = "Supplement") +
        theme_minimal()


summ <- ToothGrowth %>%
                group_by(supp, dose) %>%
                summarise(mean_len = mean(len), sd_len = sd(len), n = n(),
                                                        se = sd_len / sqrt(n), .groups = "drop")



ggplot(summ, aes(x = dose, y = mean_len, color = supp, group = supp)) +
                geom_line(size = 1) +
                geom_point(size = 3) +
                geom_errorbar(aes(ymin = mean_len - sd_len, ymax = mean_len + sd_len),
                              width = 0.05, size = 0.8) +
                scale_x_continuous(breaks = unique(summ$dose)) +
                labs(x = "Dose", y = "Mean len", title = "ToothGrowth: mean len by supplement and dose",
                                 color = "Supplement") +
                theme_minimal()


ToothGrowth %>%
        ggplot( aes(x=dose, y=len, color=supp)) +
        geom_point() +
        theme_minimal() +
        xlab("dose") +
        ylab("len")

ggplot() +
  # raw observations (jitter so points don't overlap)
  geom_jitter(data = ToothGrowth,
              aes(x = factor(dose), y = len, color = supp),
              position = position_jitterdodge(jitter.width = 0.15, dodge.width = 0.25),
              alpha = 0.5, size = 1.8) +
  # SD error bars for the means
  geom_errorbar(data = summ,
                aes(x = factor(dose), ymin = mean_len - sd_len, ymax = mean_len + sd_len, color = supp),
                position = position_dodge(width = 0.25), width = 0.08, size = 0.9) +
  # lines connecting means
  geom_line(data = summ, aes(x = factor(dose), y = mean_len, group = supp, color = supp),
            position = position_dodge(width = 0.25), size = 1) +
  # mean points
  geom_point(data = summ, aes(x = factor(dose), y = mean_len, color = supp),
             position = position_dodge(width = 0.25), size = 3) +
  scale_color_manual(values = c("lightblue", "salmon")) +
  labs(x = "Dose", y = "len", color = "Supplement",
       title = "ToothGrowth — raw data with mean ± SD") +
  theme_minimal()
