-----------------------------------
# Title: NBA Teams 2017
# Description:
# Inputs: nba2017-roster.csv and nba2017-stats.csv
# Outputs: efficiency-summary.txt, teams-summary.txt, nba2017-teams.csv
----------------------------------- 
  
## Data preparation of nba2017-roster.csv
setwd("~/Stat 133/stat133-hws-fall17/hw03/data") 
nba_roster <- read_csv("nba2017-roster.csv")
str(nba_roster)

## Data preparation of nba2017-stats.csv

nba_stats <- read_csv("nba2017-stats.csv")
str(nba_stats)
nba_stats1 <- mutate(nba_stats, missed_fg = nba_stats$field_goals_atts - nba_stats$field_goals_made)
nba_stats2 <- mutate(nba_stats1, missed_ft = nba_stats1$points1_atts - nba_stats$points1_made)
nba_stats3 <- mutate(nba_stats2, points = nba_stats2$points3_made + nba_stats2$points2_made + nba_stats2$points1_made)
nba_stats4 <- mutate(nba_stats3, rebounds = nba_stats3$off_rebounds + nba_stats3$def_rebounds)
nba_stats5 <- mutate(nba_stats4, efficiency = (nba_stats4$points + nba_stats4$rebounds + nba_stats4$assists + nba_stats4$steals + nba_stats4$blocks - nba_stats4$missed_fg - nba_stats4$missed_ft - nba_stats4$turnovers)/nba_stats4$games_played)

sink(file = "../output/efficiency-summary.txt")
summary(nba_stats5$efficiency)
sink()

## Merge nba_stats and nba_roster
merged_roster_stats <- inner_join(nba_roster, nba_stats5)
str(merged_roster_stats)


## Make "teams" data frame
team <- unique(merged_roster_stats$team)
teams <- 
  (merged_roster_stats %>%
     group_by(team) %>%
     summarise(experience = round(sum(experience), 2),
               salary = round(sum(salary/1000000), 2),
               points3 = sum(points3_made),
               points2 = sum(points2_made),
               free_throws = sum(points1_made),
               points = sum(points),
               off_rebounds = sum(off_rebounds),
               def_rebounds = sum(def_rebounds),
               assists = sum(assists),
               steals = sum(steals),
               blocks = sum(blocks),
               turnovers = sum(turnovers),
               fouls = sum(fouls),
               efficiency = sum(efficiency)))
summary(teams)

## Export teams summary 
setwd("~/Stat 133/stat133-hws-fall17/hw03/data")
sink(file = "teams-summary.txt")
summary(teams)
sink()

## Export teams table
sink(file = "nba2017-teams.csv")
write.csv(teams, row.names = FALSE)
sink()

## Star plot of teams

pdf('../images/teams_star_plot.pdf')
stars(teams[ , -1], labels = teams$team)
dev.off()

## ggplot of Experience and Salary
library(ggplot2)
experience_salary <- ggplot(data = teams, aes(x = experience, y = salary)) +
  geom_point() +
  geom_text(aes(label = team))
ggsave('../images/experience_salary.pdf', width = 6, height = 4)
