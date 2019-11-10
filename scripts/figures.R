library(tidyverse)


# annotated themes --------------------------------------------------------


ggplot(mtcars, aes(mpg, disp, color = factor(cyl), shape = factor(cyl)) ) + geom_point(size = 2) +
  labs(tag = "Tag", title = "Title", subtitle = "Subtitle",
       caption = "Caption", x = "x-axis label", y = "y-axis label",
       color = "Color", shape = "Shape") + 
  scale_x_continuous(breaks = c(15, 22.5, 30), 
                     labels = c("x", "tick", "label")) + 
  scale_y_continuous(breaks = c(400, 300, 200), 
                     labels = c("y", "tick", "label")
                    ) +
  scale_color_discrete(labels = c("color", "key", "labels")) + 
  scale_shape_discrete(labels = c("shape", "key", "labels")) + 
  theme_bw(base_size = 24) + 
  theme(plot.caption = element_text(face = "italic"),
        plot.title = element_text(face = "bold"), 
        plot.subtitle = element_text(face = "italic"),
        axis.text = element_text(face = "italic"),
        axis.title.x = element_text(margin = margin(t = 20)),
        axis.title.y = element_text(margin = margin(r = 20)))

ggsave(here::here("images/ggplot-annotated-theme.png"), dpi = 320)


# diamonds ----------------------------------------------------------------

ggplot(diamonds, aes(carat, price)) + geom_hex() + 
  theme(axis.text = element_text(size = 24),
        axis.title = element_text(size = 28),
        legend.title = element_text(size = 24),
        legend.text = element_text(size = 18))

ggsave(here::here("images/ggplot-annotated-diamonds.png"), dpi = 320)

