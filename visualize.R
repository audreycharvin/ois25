# visualize.R
library(ggplot2)

# Jeu de données intégré
data("iris")

# Graphique : longueur vs largeur des pétales, coloré par espèce, avec ellipse
ggplot(iris, aes(x = Petal.Length, y = Petal.Width, color = Species)) +
  geom_point(size = 3, alpha = 0.8) +
  geom_smooth(method = "lm", se = FALSE, linetype = "dashed", color = "gray40") +
  stat_ellipse(type = "norm", linetype = "dotted") +
  labs(
    title = "Morphologie des pétales selon l'espèce",
    subtitle = "Longueur vs largeur avec ellipse de concentration et tendance linéaire",
    x = "Longueur du pétale (cm)",
    y = "Largeur du pétale (cm)",
    color = "Espèce"
  ) +
  theme_minimal()
