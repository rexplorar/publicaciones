library(tidyverse)
library(RColorBrewer)

idh <- tribble(
  ~pais, ~idh,
  "República Dominicana", 0.756,
  "Brasil", 0.765,
  "Portugal", 0.864
)


simple <- ggplot(idh, aes(x = pais, y = idh)) +
  geom_col()

girado <- ggplot(idh, aes(x = pais, y = idh)) +
  geom_col() +
  coord_flip()

etiquetas <- ggplot(idh, aes(x = pais, y = idh)) +
  geom_col() +
  coord_flip() +
  labs(title = "IDH",
       subtitle = "Datos por país",
       x = "",
       y = "",
       caption = "ONU, 2020")

colores <- ggplot(idh, aes(x = pais, y = idh)) +
  geom_col(fill = "#abd827") +
  coord_flip() +
  labs(title = "IDH",
       subtitle = "Datos por país",
       x = "",
       y = "",
       caption = "ONU, 2020") 

tema <- ggplot(idh, aes(x = pais, y = idh)) +
  geom_col(fill = "#abd827") +
  coord_flip() +
  labs(title = "IDH",
       subtitle = "Datos por país",
       x = "",
       y = "",
       caption = "ONU, 2020") +
  theme_minimal()


ggsave("simple.png",
       simple, 
       width = 800,
       height = 700,
       units = "px")

ggsave("girado.png",
       girado, 
       width = 800,
       height = 700,
       units = "px")

ggsave("etiquetas.png",
       etiquetas, 
       width = 800,
       height = 700,
       units = "px")

ggsave("colores.png",
       colores, 
       width = 800,
       height = 700,
       units = "px")

ggsave("tema.png",
       tema, 
       width = 800,
       height = 700,
       units = "px")

  
  
   