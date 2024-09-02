
library(ggplot2)

# svg("figures/gauss.svg", width = 7, height = 4)

x <- seq(-4,4,0.01)
y <- dnorm(x)
plot(y ~ x, type = "l", xaxt = "n", yaxt = "n", ann = F, bty = "n")

upper_bond <- 4
lower_bond <- -4

auswahl <- x <= upper_bond & x >= lower_bond
x_polygon <- x[auswahl]
y_polygon <- y[auswahl]

polygon(c(lower_bond, x_polygon, upper_bond),
        c(0, y_polygon, 0),
        col = alpha("blue", 0.2), border = NA)
abline(h = 0)
abline(v = 2)


upper_bond <- 4
lower_bond <- 2

auswahl <- x <= upper_bond & x >= lower_bond
x_polygon <- x[auswahl]
y_polygon <- y[auswahl]

polygon(c(lower_bond, x_polygon, upper_bond),
        c(0, y_polygon, 0),
        col = alpha("blue", 0.7), border = NA)
abline(h = 0)
abline(v = 2)

# dev.off()