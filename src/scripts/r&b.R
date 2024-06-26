library(tidyverse)

spotify_30000 |>
  filter(playlist_genre == "r&b") |>
  ggplot(aes(x = track_popularity)) +
  geom_density(aes(color = fct_reorder(playlist_subgenre,
                                       track_popularity,
                                       .desc = TRUE)),
               alpha = 0.5,
               size = 1) +
  theme_bw() +
  labs(title = "Popularity of R&B Songs By Subgenre",
       subtitle = "Neo Soul and New Jack Swing aren't very popular",
       x = "Popularity",
       y = "Density",
       color = "Subgenre",
       caption = "30000 Spotify Songs")

ggsave("src/plots/r&b/spotify_30000_r&b_popularity.png", width = 8, height = 6)



spotify_30000 |>
  filter(playlist_genre == "r&b") |>
  ggplot(aes(x = danceability)) +
  geom_density(aes(color = fct_reorder(playlist_subgenre,
                                       danceability,
                                       .desc = TRUE)),
               alpha = 0.5,
               size = 1) +
  theme_bw() +
  labs(title = "Danceability of R&B Songs By Subgenre",
       subtitle = "New jack swing is the most danceable",
       x = "Danceability",
       y = "Density",
       color = "Subgenre",
       caption = "30000 Spotify Songs")

ggsave("src/plots/r&b/spotify_30000_r&b_danceability.png", width = 8, height = 6)


spotify_30000 |>
  filter(playlist_genre == "r&b") |>
  ggplot(aes(x = speechiness)) +
  geom_density(aes(color = fct_reorder(playlist_subgenre,
                                       speechiness,
                                       .desc = TRUE)),
               alpha = 0.5,
               size = 1) +
  theme_bw() +
  labs(title = "Speechiness of R&B Songs By Subgenre",
       subtitle = "R&B is not very speechy",
       x = "Speechiness",
       y = "Density",
       color = "Subgenre",
       caption = "30000 Spotify Songs")

ggsave("src/plots/r&b/spotify_30000_r&b_speechiness.png", width = 8, height = 6)


spotify_30000 |>
  filter(playlist_genre == "r&b") |>
  ggplot(aes(x = valence)) +
  geom_density(aes(color = fct_reorder(playlist_subgenre,
                                       valence,
                                       .desc = TRUE)),
               alpha = 0.5,
               size = 1) +
  theme_bw() +
  labs(title = "Valence of R&B Songs By Subgenre",
       subtitle = "New jack swing has the most valence",
       x = "Valence",
       y = "Density",
       color = "Subgenre",
       caption = "30000 Spotify Songs")

ggsave("src/plots/r&b/spotify_30000_r&b_valence.png", width = 8, height = 6)

spotify_30000 |>
  filter(playlist_genre == "r&b") |>
  ggplot(aes(x = tempo)) +
  geom_density(aes(color = fct_reorder(playlist_subgenre,
                                       tempo,
                                       .desc = TRUE)),
               alpha = 0.5,
               size = 1) +
  theme_bw() +
  labs(title = "Tempo of R&B Songs By Subgenre",
       subtitle = "New jack swing is mostly fixed around 110 BPM",
       x = "Tempo (BPM)",
       y = "Density",
       color = "Subgenre",
       caption = "30000 Spotify Songs")

ggsave("src/plots/r&b/spotify_30000_r&b_tempo.png", width = 8, height = 6)

