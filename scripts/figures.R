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


# ggplot element line -----------------------------------------------------

ggplot(mtcars, aes(mpg, disp)) +
  geom_point(size = 2) +
  scale_x_continuous(breaks = c(15, 22.5, 30), 
                     labels = c("x", "tick", "label")) + 
  scale_y_continuous(breaks = c(400, 300, 200), 
                     labels = c("y", "tick", "label")
  ) +
  theme_bw(base_size = 24) + 
  labs(x = "", y = "") + 
  theme(axis.ticks = element_line(color = "#d62d20", size = 1.5),
        axis.ticks.length = unit(3, "mm"),
        axis.line = element_line(color = "#008744", size = 1.5),
        panel.grid.major = element_line(color = "#ffa700", size = 1.5),
        panel.grid.minor = element_line(color = "#0057e7", size = 0.8))

ggsave(here::here("images/ggplot-annotated-lines.png"), dpi = 320)


# ggplot element line -----------------------------------------------------

ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) +
  geom_jitter(size = 1.3) + 
  theme(legend.background = element_rect(fill = "#fff6c2", 
                                         color = "black",
                                         linetype = "dashed"),
        legend.key = element_rect(fill = "grey",
                                  color = "brown"),
        legend.box.background = element_rect(fill = "transparent"),
        panel.background = element_rect(fill = "#005F59",
                                        color = "red",
                                        size = 3),
        panel.border = element_rect(fill = "transparent",
                                    color = "black", 
                                    linetype = "dashed",
                                    size = 3),
        plot.background = element_rect(fill = "#a1dce9",
                                       color = "black",
                                       size = 1.3),
        axis.text = element_blank(),
        line = element_blank(),
        axis.title = element_blank()
        ) + 
  scale_color_discrete(labels = c("A", "B", "C"), name = "Legend") 
  
ggsave(here::here("images/ggplot-annotated-rect.png"), dpi = 320)

