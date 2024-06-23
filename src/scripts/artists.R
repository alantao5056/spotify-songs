library(tidyverse)


artists <- read_csv("src/data/artists.csv")

artists |>
  mutate(tags_lastfm = str_split(tags_lastfm, "; ")) |>
  unnest(tags_lastfm) |>
  summarize(listeners_lastfm = mean(listeners_lastfm), .by = tags_lastfm) |>
  select(listeners_lastfm, tags_lastfm) |>
  filter(tags_lastfm %in% c("pop", "rock", "hip hop", "country", "jazz", "rap", "folk")) |>
  ggplot(aes(x = fct_reorder(tags_lastfm, listeners_lastfm, .desc = TRUE), y = listeners_lastfm)) +
  geom_col() +
  theme_bw() +
  labs(title = "Average Artists' Number of Listeners Based On Music Genre",
       subtitle = "folk and jazz are not so popular",
       x = "Music Genre",
       y = "Number of Listeners on last.fm",
       caption = "data provided by last.fm")

ggsave("src/plots/artists.png", width = 8, height = 6)
