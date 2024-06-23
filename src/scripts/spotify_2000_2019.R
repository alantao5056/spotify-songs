library(tidyverse)

# read data
spotify_2000_2019 <- read_csv("src/data/spotify_2000_2019.csv")


spotify_2000_2019 |>
  filter(year != 2020 & year != 1998) |>
  ggplot(aes(x = year, y = valence)) +
  geom_boxplot(aes(group = year)) +
  geom_smooth(se = FALSE, method = "lm") +
  theme_bw() +
  labs(title = "Valence of Top Spotify Songs From 1999 to 2019",
       subtitle = "Valence is slowly decreasing",
       x = "Year",
       y = "Valence",
       caption = "Spotify API")

ggsave("src/plots/spotify_2000_2019_valence.png", width = 8, height = 6)



spotify_2000_2019 |>
  filter(year != 2020 & year != 1998) |>
  mutate(duration_s = duration_ms/1000) |>
  ggplot(aes(x = year, y = duration_s)) +
  geom_boxplot(aes(group = year)) +
  geom_smooth(se = FALSE, method = "lm") +
  theme_bw() +
  labs(title = "Duration of Top Spotify Songs From 1999 to 2019",
       subtitle = "Duration is slowly decreasing",
       x = "Year",
       y = "Duration (seconds)",
       caption = "Spotify API")

ggsave("src/plots/spotify_2000_2019_duration.png", width = 8, height = 6)



spotify_2000_2019 |>
  filter(year != 2020 & year != 1998) |>
  summarize(explicit = sum(explicit), n = n(), .by = year) |>
  mutate(percent_explicit = explicit/n) |>
  ggplot(aes(x = year, y = percent_explicit)) +
  geom_col()+
  scale_y_continuous(labels = scales::percent_format()) +
  geom_smooth(se = FALSE) +
  theme_bw() +
  labs(title = "Percentage of Explicit Top Spotify Songs From 1999 to 2019",
       subtitle = "2018 is an all time high",
       x = "Year",
       y = "Explicit Percentage",
       caption = "Spotify API")

ggsave("src/plots/spotify_2000_2019_explicit.png", width = 8, height = 6)



spotify_2000_2019 |>
  filter(year != 2020 & year != 1998) |>
  mutate(genre = str_split(genre, ", ")) |>
  unnest(genre) |>
  select(year, genre) |>
  summarize(.by = c(year, genre), n = n()) |>
  filter(genre %in% c("pop",
                      "hip hop",
                      "rock",
                      "R&B",
                      "Dance/Electronic")) |>
  ggplot(aes(x = year, y = n)) +
  geom_line(aes(color = fct_reorder(genre, n, .desc = TRUE)), size = 1) +
  theme_bw() +
  labs(title = "Number of Top Spotify Songs Over Time By Genre",
       subtitle = "There were always more pop songs",
       x = "Year",
       y = "Number of Songs",
       color = "Genre",
       caption = "Spotify API")

ggsave("src/plots/spotify_2000_2019_genre.png", width = 8, height = 6)
