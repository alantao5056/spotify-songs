library(tidyverse)

spotify_30000 |>
  filter(playlist_genre == "rock") |>
  ggplot(aes(x = loudness)) +
  geom_density(aes(color = fct_reorder(playlist_subgenre,
                                       loudness,
                                       .desc = TRUE)),
               alpha = 0.5,
               size = 1) +
  theme_bw() +
  labs(title = "Loudness of Rock Songs By Subgenre",
       subtitle = "Hard rock is the loudest",
       x = "Loudness",
       y = "Density",
       color = "Subgenre",
       caption = "30000 Spotify Songs")

ggsave("src/plots/spotify_30000_rock_loudness.png", width = 8, height = 6)
