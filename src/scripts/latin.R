library(tidyverse)


spotify_30000 |>
  filter(playlist_genre == "latin") |>
  ggplot(aes(x = track_popularity)) +
  geom_density(aes(color = fct_reorder(playlist_subgenre,
                                       track_popularity,
                                       .desc = TRUE)),
               alpha = 0.5,
               size = 1) +
  theme_bw() +
  labs(title = "Popularity of Latin Songs By Subgenre",
       subtitle = "Popularity can vary, but tropical is the least popular",
       x = "Popularity",
       y = "Density",
       color = "Subgenre",
       caption = "30000 Spotify Songs")

ggsave("src/plots/spotify_30000_latin_popularity.png", width = 8, height = 6)



spotify_30000 |>
  filter(playlist_genre == "latin") |>
  ggplot(aes(x = danceability)) +
  geom_density(aes(color = fct_reorder(playlist_subgenre,
                                       danceability,
                                       .desc = TRUE)),
               alpha = 0.5,
               size = 1) +
  theme_bw() +
  labs(title = "Danceability of Latin Songs By Subgenre",
       subtitle = "Reggaeton is the most danceable",
       x = "Danceability",
       y = "Density",
       color = "Subgenre",
       caption = "30000 Spotify Songs")

ggsave("src/plots/spotify_30000_latin_danceability.png", width = 8, height = 6)


spotify_30000 |>
  filter(playlist_genre == "latin") |>
  ggplot(aes(x = speechiness)) +
  geom_density(aes(color = fct_reorder(playlist_subgenre,
                                       speechiness,
                                       .desc = TRUE)),
               alpha = 0.5,
               size = 1) +
  theme_bw() +
  labs(title = "Speechiness of Latin Songs By Subgenre",
       subtitle = "Reggaeton and Latin Hip Hop are a little more speechy than the rest",
       x = "Speechiness",
       y = "Density",
       color = "Subgenre",
       caption = "30000 Spotify Songs")

ggsave("src/plots/spotify_30000_latin_speechiness.png", width = 8, height = 6)


spotify_30000 |>
  filter(playlist_genre == "latin") |>
  ggplot(aes(x = valence)) +
  geom_density(aes(color = fct_reorder(playlist_subgenre,
                                       valence,
                                       .desc = TRUE)),
               alpha = 0.5,
               size = 1) +
  theme_bw() +
  labs(title = "Valence of Latin Songs By Subgenre",
       subtitle = "Wide spread of valence",
       x = "Valence",
       y = "Density",
       color = "Subgenre",
       caption = "30000 Spotify Songs")

ggsave("src/plots/spotify_30000_latin_valence.png", width = 8, height = 6)

spotify_30000 |>
  filter(playlist_genre == "latin") |>
  ggplot(aes(x = tempo)) +
  geom_density(aes(color = fct_reorder(playlist_subgenre,
                                       tempo,
                                       .desc = TRUE)),
               alpha = 0.5,
               size = 1) +
  theme_bw() +
  labs(title = "Tempo of latin Songs By Subgenre",
       subtitle = "Peaks at 90, 125, and 175 BPM",
       x = "Tempo (BPM)",
       y = "Density",
       color = "Subgenre",
       caption = "30000 Spotify Songs")

ggsave("src/plots/spotify_30000_latin_tempo.png", width = 8, height = 6)
