hw03-lindsay-dahlen.Rmd
================
Lindsay Dahlen
October 15, 2017

``` r
# Ranking by Salary
library(dplyr)
```

    ## Warning: package 'dplyr' was built under R version 3.4.2

    ## 
    ## Attaching package: 'dplyr'

    ## The following objects are masked from 'package:stats':
    ## 
    ##     filter, lag

    ## The following objects are masked from 'package:base':
    ## 
    ##     intersect, setdiff, setequal, union

``` r
library(readr)
library(ggplot2)
setwd("~/Stat 133/stat133-hws-fall17/hw03/data")
teams <- read_csv("nba2017-teams.csv")
```

    ## Parsed with column specification:
    ## cols(
    ##   team = col_character(),
    ##   experience = col_integer(),
    ##   salary = col_double(),
    ##   points3 = col_integer(),
    ##   points2 = col_integer(),
    ##   free_throws = col_integer(),
    ##   points = col_integer(),
    ##   off_rebounds = col_integer(),
    ##   def_rebounds = col_integer(),
    ##   assists = col_integer(),
    ##   steals = col_integer(),
    ##   blocks = col_integer(),
    ##   turnovers = col_integer(),
    ##   fouls = col_integer(),
    ##   efficiency = col_double()
    ## )

``` r
summary(teams)
```

    ##      team             experience         salary          points3      
    ##  Length:30          Min.   : 34.00   Min.   : 55.78   Min.   : 513.0  
    ##  Class :character   1st Qu.: 56.00   1st Qu.: 84.59   1st Qu.: 617.0  
    ##  Mode  :character   Median : 63.00   Median : 91.41   Median : 704.0  
    ##                     Mean   : 68.73   Mean   : 90.95   Mean   : 730.7  
    ##                     3rd Qu.: 73.25   3rd Qu.:101.87   3rd Qu.: 805.8  
    ##                     Max.   :128.00   Max.   :125.79   Max.   :1141.0  
    ##     points2      free_throws       points      off_rebounds  
    ##  Min.   :1769   Min.   : 998   Min.   :3394   Min.   :524.0  
    ##  1st Qu.:2115   1st Qu.:1238   1st Qu.:4115   1st Qu.:699.2  
    ##  Median :2252   Median :1384   Median :4406   Median :762.5  
    ##  Mean   :2242   Mean   :1359   Mean   :4332   Mean   :768.7  
    ##  3rd Qu.:2413   3rd Qu.:1492   3rd Qu.:4549   3rd Qu.:865.8  
    ##  Max.   :2638   Max.   :1605   Max.   :4969   Max.   :961.0  
    ##   def_rebounds     assists         steals          blocks     
    ##  Min.   :1878   Min.   :1291   Min.   :475.0   Min.   :234.0  
    ##  1st Qu.:2435   1st Qu.:1546   1st Qu.:544.8   1st Qu.:311.0  
    ##  Median :2536   Median :1738   Median :590.0   Median :351.5  
    ##  Mean   :2524   Mean   :1732   Mean   :583.3   Mean   :360.3  
    ##  3rd Qu.:2644   3rd Qu.:1858   3rd Qu.:612.0   3rd Qu.:389.5  
    ##  Max.   :2854   Max.   :2475   Max.   :779.0   Max.   :551.0  
    ##    turnovers          fouls        efficiency    
    ##  Min.   : 703.0   Min.   :1164   Min.   : 71.11  
    ##  1st Qu.: 973.5   1st Qu.:1355   1st Qu.: 84.47  
    ##  Median :1021.5   Median :1519   Median : 86.80  
    ##  Mean   :1013.5   Mean   :1496   Mean   : 88.30  
    ##  3rd Qu.:1087.2   3rd Qu.:1599   3rd Qu.: 89.43  
    ##  Max.   :1184.0   Max.   :1886   Max.   :108.02

``` r
teams_salary <- arrange(teams, desc(salary))
head(teams_salary)
```

    ## # A tibble: 6 x 15
    ##    team experience salary points3 points2 free_throws points off_rebounds
    ##   <chr>      <int>  <dbl>   <int>   <int>       <int>  <int>        <int>
    ## 1   CLE        128 125.79    1012    2107        1355   4474          727
    ## 2   LAC        124 114.78     841    2401        1586   4828          740
    ## 3   TOR         57 108.46     626    2359        1570   4555          848
    ## 4   MEM         83 108.34     750    2140        1465   4355          866
    ## 5   SAS         99 104.69     743    2459        1431   4633          821
    ## 6   DET         55 103.07     631    2638        1140   4409          908
    ## # ... with 7 more variables: def_rebounds <int>, assists <int>,
    ## #   steals <int>, blocks <int>, turnovers <int>, fouls <int>,
    ## #   efficiency <dbl>

``` r
salary_mean <- mean(teams_salary$salary)
```

ggplot(teams\_salary, aes(x = team, y = salary)) + geom\_bar() + coord\_flip() + geom\_hline(yintercept = salary\_mean) + xlab(Team) + ylab(Salary(in millions)) + ggtitle("NBA Teams ranked by Total Points", subtitle = NULL) \# Help
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

``` r
# Ranking by Points
teams_points <- arrange(teams, desc(points))
head(teams_points)
```

    ## # A tibble: 6 x 15
    ##    team experience salary points3 points2 free_throws points off_rebounds
    ##   <chr>      <int>  <dbl>   <int>   <int>       <int>  <int>        <int>
    ## 1   GSW        101  98.69     982    2540        1447   4969          759
    ## 2   LAC        124 114.78     841    2401        1586   4828          740
    ## 3   MIN         48  59.38     601    2623        1585   4809          938
    ## 4   PHO         68  72.53     564    2551        1605   4720          882
    ## 5   BOS         63  91.92     985    2183        1536   4704          744
    ## 6   DEN         74  78.38     868    2347        1471   4686          867
    ## # ... with 7 more variables: def_rebounds <int>, assists <int>,
    ## #   steals <int>, blocks <int>, turnovers <int>, fouls <int>,
    ## #   efficiency <dbl>

``` r
points_mean <- mean(teams_points$points)
```

ggplot(teams\_points, aes(x = teams, y = points)) +
---------------------------------------------------

geom\_bar() + coord\_flip() + geom\_hline(yintercept = points\_mean, col = "red") + xlab("Total Points") + ylab("Team") + ggtitle("NBA Teams ranked by Total Points", subtitle = NULL) \# Help

``` r
# Ranking by Efficiency
teams_efficiency <- arrange(teams, desc(efficiency))
head(teams_efficiency)
```

    ## # A tibble: 6 x 15
    ##    team experience salary points3 points2 free_throws points off_rebounds
    ##   <chr>      <int>  <dbl>   <int>   <int>       <int>  <int>        <int>
    ## 1   GSW        101  98.69     982    2540        1447   4969          759
    ## 2   CLE        128 125.79    1012    2107        1355   4474          727
    ## 3   DEN         74  78.38     868    2347        1471   4686          867
    ## 4   NOP         55  90.63     513    1952        1120   3585          580
    ## 5   TOR         57 108.46     626    2359        1570   4555          848
    ## 6   PHI         34  55.78     690    1917        1212   3819          673
    ## # ... with 7 more variables: def_rebounds <int>, assists <int>,
    ## #   steals <int>, blocks <int>, turnovers <int>, fouls <int>,
    ## #   efficiency <dbl>

``` r
efficiency_mean <- mean(teams_efficiency$efficiency)
```

ggplot(teams\_efficiency, aes(x = teams, y = efficiency)) +
-----------------------------------------------------------

geom\_bar() + coord\_flip() + geom\_hline(yintercept = efficiency\_mean, col = "red") + xlab("Total Efficiency") + ylab("Team") + ggtitle("NBA Teams ranked by Total Efficiency", subtitle = NULL)

Help
====

The tables show that Cleveland is the top team when ranked by salary and efficiency, despite not scoring the most points. It also shows that total salary is not linked to total points or total efficiency.

``` r
# Principle Components Analysis
pca_points3 <- prcomp(teams$points3, scale. = TRUE)
pca_points2 <- prcomp(teams$points2, scale. = TRUE)
pca_free_throws <- prcomp(teams$free_throws, scale. = TRUE)
pca_off_rebounds <- prcomp(teams$off_rebounds, scale. = TRUE)
pca_def_rebounds <- prcomp(teams$def_rebounds, scale. = TRUE)
pca_assists <- prcomp(teams$assists, scale. = TRUE)
pca_steals <- prcomp(teams$steals, scale. = TRUE)
pca_blocks <- prcomp(teams$blocks, scale. = TRUE)
pca_turnovers <- prcomp(teams$turnovers, scale. = TRUE)
pca_fouls <- prcomp(teams$fouls, scale. = TRUE)

eigs <- data.frame(eigenvalue = pca_points3$sdev^2, proportion = round(100*pca_points3$sdev^2 / sum(pca_points3$sdev^2), 3))
eigs
```

    ##   eigenvalue proportion
    ## 1          1        100
