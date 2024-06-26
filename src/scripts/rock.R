library(tidyverse)

spotify_30000 |>
  filter(playlist_genre == "rock") |>
  ggplot(aes(x = track_popularity)) +
  geom_density(aes(color = fct_reorder(playlist_subgenre,
                                       track_popularity,
                                       .desc = TRUE)),
               alpha = 0.5,
               size = 1) +
  theme_bw() +
  labs(title = "Popularity of Rock Songs By Subgenre",
       subtitle = "Permanent Wave is the most popular",
       x = "popularity",
       y = "Density",
       color = "Subgenre",
       caption = "30000 Spotify Songs")

ggsave("src/plots/rock/spotify_30000_rock_popularity.png", width = 8, height = 6)

spotify_30000 |>
  filter(playlist_genre == "rock") |>
  ggplot(aes(x = danceability)) +
  geom_density(aes(color = fct_reorder(playlist_subgenre,
                                       danceability,
                                       .desc = TRUE)),
               alpha = 0.5,
               size = 1) +
  theme_bw() +
  labs(title = "Danceability of Rock Songs By Subgenre",
       subtitle = "Hard Rock is not as danceable",
       x = "Danceability",
       y = "Density",
       color = "Subgenre",
       caption = "30000 Spotify Songs")

ggsave("src/plots/rock/spotify_30000_rock_danceability.png", width = 8, height = 6)


spotify_30000 |>
  filter(playlist_genre == "rock") |>
  ggplot(aes(x = speechiness)) +
  geom_density(aes(color = fct_reorder(playlist_subgenre,
                                       speechiness,
                                       .desc = TRUE)),
               alpha = 0.5,
               size = 1) +
  theme_bw() +
  labs(title = "Speechiness of Rock Songs By Subgenre",
       subtitle = "Hard rock is more speechy",
       x = "Speechiness",
       y = "Density",
       color = "Subgenre",
       caption = "30000 Spotify Songs")

ggsave("src/plots/rock/spotify_30000_rock_speechiness.png", width = 8, height = 6)

spotify_30000 |>
  filter(playlist_genre == "rock") |>
  ggplot(aes(x = valence)) +
  geom_density(aes(color = fct_reorder(playlist_subgenre,
                                       valence,
                                       .desc = TRUE)),
               alpha = 0.5,
               size = 1) +
  theme_bw() +
  labs(title = "Valence of Rock Songs By Subgenre",
       subtitle = "Hard Rock has lower valence",
       x = "Valence",
       y = "Density",
       color = "Subgenre",
       caption = "30000 Spotify Songs")

ggsave("src/plots/rock/spotify_30000_rock_valence.png", width = 8, height = 6)

spotify_30000 |>
  filter(playlist_genre == "rock") |>
  ggplot(aes(x = tempo)) +
  geom_density(aes(color = fct_reorder(playlist_subgenre,
                                       tempo,
                                       .desc = TRUE)),
               alpha = 0.5,
               size = 1) +
  theme_bw() +
  labs(title = "Tempo of Rock Songs By Subgenre",
       subtitle = "Similar tempos, peaking at 125 BPM",
       x = "Tempo (BPM)",
       y = "Density",
       color = "Subgenre",
       caption = "30000 Spotify Songs")

ggsave("src/plots/rock/spotify_30000_rock_tempo.png", width = 8, height = 6)


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

ggsave("src/plots/rock/spotify_30000_rock_loudness.png", width = 8, height = 6)
