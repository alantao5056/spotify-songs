library(tidyverse)

spotify_30000 <- read_csv("src/data/spotify_30000.csv")


spotify_30000 |>
  ggplot(aes(x = fct_reorder(playlist_genre, track_popularity, .desc = TRUE),
             y = track_popularity)) +
  geom_boxplot() +
  theme_bw() +
  labs(title = "Song Genre and Popularity Index",
       subtitle = "EDM is significantly more unpopular",
       x = "Song Genre",
       y = "Popularity Index",
       caption = "30000 Spotify Songs")

ggsave("src/plots/spotify_30000_genre_popularity.png", width = 8, height = 6)

spotify_30000 |>
  ggplot(aes(x = danceability)) +
  geom_density(aes(color = fct_reorder(playlist_genre,
                                       danceability,
                                       .desc = TRUE)),
               alpha = 0.5,
               size = 1) +
  theme_bw() +
  labs(title = "Danceability of Songs By Genre",
       subtitle = "Rock is not very danceable",
       x = "Danceability",
       y = "Density",
       color = "Genre",
       caption = "30000 Spotify Songs")

ggsave("src/plots/spotify_30000_danceability.png", width = 8, height = 6)


spotify_30000 |>
  ggplot(aes(x = tempo)) +
  geom_density(aes(color = fct_reorder(playlist_genre,
                                       tempo,
                                       .desc = TRUE)),
               alpha = 0.5,
               size = 1) +
  theme_bw() +
  labs(title = "Tempo of Songs By Genre",
       subtitle = "Most of EDM tempo is around 125 BPM",
       x = "Tempo",
       y = "Density",
       color = "Genre",
       caption = "30000 Spotify Songs")

ggsave("src/plots/spotify_30000_tempo.png", width = 8, height = 6)


spotify_30000 |>
  ggplot(aes(x = key)) +
  geom_density(size = 1) +
  theme_bw() +
  labs(title = "Key of Songs",
       subtitle = "E is the most unpopular key",
       x = "Key",
       y = "Density",
       caption = "30000 Spotify Songs")

ggsave("src/plots/spotify_30000_key.png", width = 8, height = 6)


