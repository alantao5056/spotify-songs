library(tidyverse)


spotify_30000 |>
  filter(playlist_genre == "rap") |>
  ggplot(aes(x = track_popularity)) +
  geom_density(aes(color = fct_reorder(playlist_subgenre,
                                       track_popularity,
                                       .desc = TRUE)),
               alpha = 0.5,
               size = 1) +
  theme_bw() +
  labs(title = "Popularity of Rap Songs By Subgenre",
       subtitle = "Hip Hop and Trap are most popular",
       x = "Popularity",
       y = "Density",
       color = "Subgenre",
       caption = "30000 Spotify Songs")

ggsave("src/plots/rap/spotify_30000_rap_popularity.png", width = 8, height = 6)



spotify_30000 |>
  filter(playlist_genre == "rap") |>
  ggplot(aes(x = danceability)) +
  geom_density(aes(color = fct_reorder(playlist_subgenre,
                                       danceability,
                                       .desc = TRUE)),
               alpha = 0.5,
               size = 1) +
  theme_bw() +
  labs(title = "Danceability of Rap Songs By Subgenre",
       subtitle = "Subgenres have around the same danceability, skewed left",
       x = "Danceability",
       y = "Density",
       color = "Subgenre",
       caption = "30000 Spotify Songs")

ggsave("src/plots/rap/spotify_30000_rap_danceability.png", width = 8, height = 6)



spotify_30000 |>
  filter(playlist_genre == "rap") |>
  ggplot(aes(x = speechiness)) +
  geom_density(aes(color = fct_reorder(playlist_subgenre,
                                       speechiness,
                                       .desc = TRUE)),
               alpha = 0.5,
               size = 1) +
  theme_bw() +
  labs(title = "Speechiness of Rap Songs By Subgenre",
       subtitle = "Some rap songs aren't speechy, but there are a lot of outliers",
       x = "Speechiness",
       y = "Density",
       color = "Subgenre",
       caption = "30000 Spotify Songs")

ggsave("src/plots/rap/spotify_30000_rap_speechiness.png", width = 8, height = 6)

spotify_30000 |>
  filter(playlist_genre == "rap") |>
  ggplot(aes(x = valence)) +
  geom_density(aes(color = fct_reorder(playlist_subgenre,
                                       valence,
                                       .desc = TRUE)),
               alpha = 0.5,
               size = 1) +
  theme_bw() +
  labs(title = "Valence of Rap Songs By Subgenre",
       subtitle = "Very even spread of valence",
       x = "Valence",
       y = "Density",
       color = "Subgenre",
       caption = "30000 Spotify Songs")

ggsave("src/plots/rap/spotify_30000_rap_valence.png", width = 8, height = 6)

spotify_30000 |>
  filter(playlist_genre == "rap") |>
  ggplot(aes(x = tempo)) +
  geom_density(aes(color = fct_reorder(playlist_subgenre,
                                       tempo,
                                       .desc = TRUE)),
               alpha = 0.5,
               size = 1) +
  theme_bw() +
  labs(title = "Tempo of Rap Songs By Subgenre",
       subtitle = "Peaks at 85 and 135 BPM",
       x = "Tempo (BPM)",
       y = "Density",
       color = "Subgenre",
       caption = "30000 Spotify Songs")

ggsave("src/plots/rap/spotify_30000_rap_tempo.png", width = 8, height = 6)


