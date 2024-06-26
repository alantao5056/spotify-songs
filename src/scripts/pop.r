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

ggsave("src/plots/pop/spotify_30000_pop_popularity.png", width = 8, height = 6)

spotify_30000 |>
  filter(playlist_genre == "pop") |>
  ggplot(aes(x = danceability)) +
  geom_density(aes(color = fct_reorder(playlist_subgenre,
                                       danceability,
                                       .desc = TRUE)),
               alpha = 0.5,
               size = 1) +
  theme_bw() +
  labs(title = "Danceability of Pop Songs By Subgenre",
       subtitle = "Dance pop is not significanlty more danceable than other genres of pop",
       x = "Danceability",
       y = "Density",
       color = "Subgenre",
       caption = "30000 Spotify Songs")

ggsave("src/plots/pop/spotify_30000_pop_danceability.png", width = 8, height = 6)


spotify_30000 |>
  filter(playlist_genre == "pop") |>
  ggplot(aes(x = speechiness)) +
  geom_density(aes(color = fct_reorder(playlist_subgenre,
                                       speechiness,
                                       .desc = TRUE)),
               alpha = 0.5,
               size = 1) +
  theme_bw() +
  labs(title = "Speechiness of Pop Songs By Subgenre",
       subtitle = "Not speechy",
       x = "Speechiness",
       y = "Density",
       color = "Subgenre",
       caption = "30000 Spotify Songs")

ggsave("src/plots/pop/spotify_30000_pop_speechiness.png", width = 8, height = 6)

spotify_30000 |>
  filter(playlist_genre == "pop") |>
  ggplot(aes(x = valence)) +
  geom_density(aes(color = fct_reorder(playlist_subgenre,
                                       valence,
                                       .desc = TRUE)),
               alpha = 0.5,
               size = 1) +
  theme_bw() +
  labs(title = "Valence of Pop Songs By Subgenre",
       subtitle = "Evenly spread",
       x = "Valence",
       y = "Density",
       color = "Subgenre",
       caption = "30000 Spotify Songs")

ggsave("src/plots/pop/spotify_30000_pop_valence.png", width = 8, height = 6)

spotify_30000 |>
  filter(playlist_genre == "pop") |>
  ggplot(aes(x = tempo)) +
  geom_density(aes(color = fct_reorder(playlist_subgenre,
                                       tempo,
                                       .desc = TRUE)),
               alpha = 0.5,
               size = 1) +
  theme_bw() +
  labs(title = "Tempo of Pop Songs By Subgenre",
       subtitle = "Peaks at 100 and 125 BPM",
       x = "Tempo (BPM)",
       y = "Density",
       color = "Subgenre",
       caption = "30000 Spotify Songs")

ggsave("src/plots/pop/spotify_30000_pop_tempo.png", width = 8, height = 6)

