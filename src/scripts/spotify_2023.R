library(tidyverse)
library(janitor)

# read data
spotify_2023 <- read_csv("src/data/spotify_2023.csv") |>
  clean_names()

extract_first_value <- function(input_string) {
  split_values <- strsplit(input_string, ", ")[[1]]
  first_value <- trimws(split_values[1])
  return(first_value)
}

spotify_2023 |>
  mutate(streams, as.numeric(streams)) |>
  select(track_name, streams) |>
  arrange(desc(streams))

spotify_2023 |>
  mutate(artist_s_name = sapply(artist_s_name, extract_first_value)) |>
  count(artist_s_name) |>
  arrange(desc(n)) |>
  drop_na() |>
  top_n(10) |>
  ggplot(aes(x = fct_reorder(artist_s_name, n, .desc = TRUE), y = n)) +
  geom_col() +
  theme_bw() +
  labs(
    title = "Artist With Most Number of Top 1000 Streamed Songs in 2023",
    subtitle = "Taylor Swift and The Weeknd have significantly more popularity than the rest",
    x = "Artist",
    y = "Number of Songs",
    caption = "Spotify API"
  )

ggsave("src/plots/spotify_2023_artists.png", width = 8, height = 6)


spotify_2023 |>
  ggplot(aes(x = released_year)) +
  geom_histogram(binwidth = 1) +
  theme_bw() +
  labs(title = "Top 1000 Streamed Songs in 2023 By Release Year",
       subtitle = "Although people usually like to listen to newly released songs, there are just some very good old hits",
       x = "Release Year",
       y = "Number of Songs",
       caption = "Spotify API")


ggsave("src/plots/spotify_2023_release_year.png", width = 8, height = 6)


spotify_2023 |>
  ggplot(aes(x = bpm)) +
  geom_histogram(binwidth = 5) +
  theme_bw() +
  labs(title = "BPM Top 1000 Streamed Songs in 2023",
       subtitle = "average is 122.5 BPM",
       x = "BPM",
       y = "Number of Songs",
       caption = "Spotify API")

ggsave("src/plots/spotify_2023_bpm.png", width = 8, height = 6)



spotify_2023 |>
  mutate(energy_percent = energy_percent/100) |>
  ggplot(aes(x = energy_percent)) +
  geom_histogram(binwidth = 0.02) +
  scale_x_continuous(labels = scales::percent_format()) +
  theme_bw() +
  labs(title = "Energy of Top 1000 Streamed Songs in 2023",
       subtitle = "Skewed left with an average of 64.28%",
       x = "Energy Percent",
       y = "Number of Songs",
       caption = "Spotify API")

ggsave("src/plots/spotify_2023_energy.png", width = 8, height = 6)


summary(spotify_2023)
