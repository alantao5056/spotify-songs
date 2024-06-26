library(tidyverse)

spotify_30000 |>
  filter(playlist_genre == "pop") |>
  ggplot(aes(x = track_popularity)) +
  geom_density(aes(color = fct_reorder(playlist_subgenre,
                                       track_popularity,
                                       .desc = TRUE)),
               alpha = 0.5,
               size = 1) +
  theme_bw() +
  labs(title = "Popularity of Pop Songs By Subgenre",
       subtitle = "Post-teen pop is the most popular",
       x = "Popularity",
       y = "Density",
       color = "Subgenre",
       caption = "30000 Spotify Songs")

ggsave("src/plots/spotify_30000_pop_popularity.png", width = 8, height = 6)