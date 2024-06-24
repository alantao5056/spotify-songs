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

ggsave("src/plots/spotify_30000_edm_danceability.png", width = 8, height = 6)



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
       subtitle = "Most rap songs aren't speechy, but there are a lot of outliers",
       x = "Speechiness",
       y = "Density",
       color = "Subgenre",
       caption = "30000 Spotify Songs")

ggsave("src/plots/spotify_30000_rap_speechiness.png", width = 8, height = 6)


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

ggsave("src/plots/spotify_30000_r&b_danceability.png", width = 8, height = 6)

