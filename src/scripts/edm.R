library(tidyverse)


spotify_30000 |>
  filter(playlist_genre == "edm") |>
  ggplot(aes(x = track_popularity)) +
  geom_density(aes(color = fct_reorder(playlist_subgenre,
                                       track_popularity,
                                       .desc = TRUE)),
               alpha = 0.5,
               size = 1) +
  theme_bw() +
  labs(title = "Popularity of EDM Songs By Subgenre",
       subtitle = "Pop EDM is the most popular",
       x = "Popularity",
       y = "Density",
       color = "Subgenre",
       caption = "30000 Spotify Songs")

ggsave("src/plots/edm/spotify_30000_edm_popularity.png", width = 8, height = 6)



spotify_30000 |>
  filter(playlist_genre == "edm") |>
  ggplot(aes(x = danceability)) +
  geom_density(aes(color = fct_reorder(playlist_subgenre,
                                       danceability,
                                       .desc = TRUE)),
               alpha = 0.5,
               size = 1) +
  theme_bw() +
  labs(title = "Danceability of EDM Songs By Subgenre",
       subtitle = "Electro house is the most danceable",
       x = "Danceability",
       y = "Density",
       color = "Subgenre",
       caption = "30000 Spotify Songs")

ggsave("src/plots/edm/spotify_30000_edm_danceability.png", width = 8, height = 6)


spotify_30000 |>
  filter(playlist_genre == "edm") |>
  ggplot(aes(x = speechiness)) +
  geom_density(aes(color = fct_reorder(playlist_subgenre,
                                       speechiness,
                                       .desc = TRUE)),
               alpha = 0.5,
               size = 1) +
  theme_bw() +
  labs(title = "Speechiness of EDM Songs By Subgenre",
       subtitle = "Not speechy",
       x = "Speechiness",
       y = "Density",
       color = "Subgenre",
       caption = "30000 Spotify Songs")

ggsave("src/plots/edm/spotify_30000_edm_speechiness.png", width = 8, height = 6)

spotify_30000 |>
  filter(playlist_genre == "edm") |>
  ggplot(aes(x = valence)) +
  geom_density(aes(color = fct_reorder(playlist_subgenre,
                                       valence,
                                       .desc = TRUE)),
               alpha = 0.5,
               size = 1) +
  theme_bw() +
  labs(title = "Valence of EDM Songs By Subgenre",
       subtitle = "Peaking at 25% Valence",
       x = "Valence",
       y = "Density",
       color = "Subgenre",
       caption = "30000 Spotify Songs")

ggsave("src/plots/edm/spotify_30000_edm_valence.png", width = 8, height = 6)

spotify_30000 |>
  filter(playlist_genre == "edm") |>
  ggplot(aes(x = tempo)) +
  geom_density(aes(color = fct_reorder(playlist_subgenre,
                                       tempo,
                                       .desc = TRUE)),
               alpha = 0.5,
               size = 1) +
  theme_bw() +
  labs(title = "Tempo of EDM Songs By Subgenre",
       subtitle = "Peaks at 130 BPM",
       x = "Tempo (BPM)",
       y = "Density",
       color = "Subgenre",
       caption = "30000 Spotify Songs")

ggsave("src/plots/edm/spotify_30000_edm_tempo.png", width = 8, height = 6)


