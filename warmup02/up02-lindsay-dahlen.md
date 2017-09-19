up02-Lindsay-Dahlen.Rmd
================
Lindsay Dahlen
September 11, 2017

``` r
github <- 'https://github.com/ucb-stat133/stat133-hws-fall17/'
repo <- 'raw/master/warmup02/data/nba2017-salary-points.RData'

download.file(url = paste0(github, repo), destfile = "nba2017-salary-points.RData")
```

``` r
load('nba2017-salary-points.RData')
ls()
```

    ##  [1] "experience" "github"     "player"     "points"     "points1"   
    ##  [6] "points2"    "points3"    "position"   "repo"       "salary"    
    ## [11] "team"

``` r
mode(experience)
```

    ## [1] "character"

``` r
mode(github)
```

    ## [1] "character"

``` r
mode(player)
```

    ## [1] "character"

``` r
mode(points1)
```

    ## [1] "numeric"

``` r
mode(points2)
```

    ## [1] "numeric"

``` r
mode(points3)
```

    ## [1] "numeric"

``` r
mode(position)
```

    ## [1] "character"

``` r
mode(repo)
```

    ## [1] "character"

``` r
mode(salary)
```

    ## [1] "numeric"

``` r
mode(team)
```

    ## [1] "numeric"

``` r
length(experience)
```

    ## [1] 441

``` r
length(github)
```

    ## [1] 1

``` r
length(player)
```

    ## [1] 441

``` r
length(points)
```

    ## [1] 441

``` r
length(points1)
```

    ## [1] 441

``` r
length(points2)
```

    ## [1] 441

``` r
length(points3)
```

    ## [1] 441

``` r
length(position)
```

    ## [1] 441

``` r
length(repo)
```

    ## [1] 1

``` r
length(salary)
```

    ## [1] 441

``` r
length(team)
```

    ## [1] 441

``` r
summary(points1)
```

    ##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
    ##    0.00   21.00   58.00   92.47  120.00  746.00

``` r
summary(points2)
```

    ##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
    ##     0.0    39.0   111.0   152.5   213.0   730.0

``` r
summary(points3)
```

    ##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
    ##    0.00    3.00   32.00   49.71   78.00  324.00

``` r
summary(salary)
```

    ##     Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
    ##     5145  1286160  3500000  6187014  9250000 30963450

``` r
summary(team)
```

    ## ATL BOS BRK CHI CHO CLE DAL DEN DET GSW HOU IND LAC LAL MEM MIA MIL MIN 
    ##  14  15  15  15  15  15  15  15  15  15  14  14  15  15  15  14  14  14 
    ## NOP NYK OKC ORL PHI PHO POR SAC SAS TOR UTA WAS 
    ##  14  15  15  15  15  15  14  15  15  15  15  14

``` r
mean(points1)
```

    ## [1] 92.46712

``` r
mean(points2)
```

    ## [1] 152.5079

``` r
mean(points3)
```

    ## [1] 49.70748

``` r
mean(salary)
```

    ## [1] 6187014

``` r
sd(points1)
```

    ## [1] 109.7949

``` r
sd(points2)
```

    ## [1] 143.6984

``` r
sd(points3)
```

    ## [1] 55.9721

``` r
sd(salary)
```

    ## [1] 6571890

``` r
min(points1)
```

    ## [1] 0

``` r
min(points2)
```

    ## [1] 0

``` r
min(points3)
```

    ## [1] 0

``` r
min(salary)
```

    ## [1] 5145

``` r
max(points1)
```

    ## [1] 746

``` r
max(points2)
```

    ## [1] 730

``` r
max(points3)
```

    ## [1] 324

``` r
max(salary)
```

    ## [1] 30963450

``` r
median(points1)
```

    ## [1] 58

``` r
median(points2)
```

    ## [1] 111

``` r
median(points3)
```

    ## [1] 32

``` r
median(salary)
```

    ## [1] 3500000

``` r
quantile(points1)
```

    ##   0%  25%  50%  75% 100% 
    ##    0   21   58  120  746

``` r
quantile(points2)
```

    ##   0%  25%  50%  75% 100% 
    ##    0   39  111  213  730

``` r
quantile(points3)
```

    ##   0%  25%  50%  75% 100% 
    ##    0    3   32   78  324

``` r
quantile(salary)
```

    ##       0%      25%      50%      75%     100% 
    ##     5145  1286160  3500000  9250000 30963450

What are the typical values in each vector?
===========================================

The typical values for the vectors range from the mid 50s to the 6000000s
-------------------------------------------------------------------------

What's the spread in each vector?
=================================

The values range from zero to 30963450.
---------------------------------------

``` r
hist(points1)
```

![](up02-lindsay-dahlen_files/figure-markdown_github-ascii_identifiers/unnamed-chunk-6-1.png)

``` r
boxplot(points1)
```

![](up02-lindsay-dahlen_files/figure-markdown_github-ascii_identifiers/unnamed-chunk-6-2.png)

``` r
hist(points2)
```

![](up02-lindsay-dahlen_files/figure-markdown_github-ascii_identifiers/unnamed-chunk-6-3.png)

``` r
boxplot(points2)
```

![](up02-lindsay-dahlen_files/figure-markdown_github-ascii_identifiers/unnamed-chunk-6-4.png)

``` r
hist(points3)
```

![](up02-lindsay-dahlen_files/figure-markdown_github-ascii_identifiers/unnamed-chunk-6-5.png)

``` r
boxplot(points3)
```

![](up02-lindsay-dahlen_files/figure-markdown_github-ascii_identifiers/unnamed-chunk-6-6.png)

``` r
hist(salary)
```

![](up02-lindsay-dahlen_files/figure-markdown_github-ascii_identifiers/unnamed-chunk-6-7.png)

``` r
boxplot(salary)
```

![](up02-lindsay-dahlen_files/figure-markdown_github-ascii_identifiers/unnamed-chunk-6-8.png) \# What is the overall shape?

The overall shape of the histograms are right tail distribution.
----------------------------------------------------------------

What is the typical center?
===========================

The typical center of the graphs is around 100, 100, 30, and 10000000.
----------------------------------------------------------------------

Overall range, along with an interval of typical measurements.
==============================================================

\#\# The overall range of the graphs is 700, 700, 350, and 30000000.
--------------------------------------------------------------------

``` r
factor(position)
```

    ##   [1] C  PF SG PG SF PG SF SG SF PF PF C  SG PG C  C  SF PG PF C  SG SG SF
    ##  [24] PG PF SG PG SF SF C  SF SG PG SG SF PG C  C  PG C  SG SF PF PF PF SF
    ##  [47] SG PG PF C  C  C  PG C  PF SF SG SG PG SF PG C  PF PG SF PF PG SF C 
    ##  [70] PF PF SF SG SF C  PF SG C  SF SG PG PF PF SG PF C  SG PG C  SF PF PG
    ##  [93] PG PF SG PF SG C  SF PF PF SG PF PG C  SG SG SG PG SF C  PG PF SF PG
    ## [116] C  SG PG C  PF PF SG SF SF PF SG PG C  SG C  C  C  PG C  SG PF PG PF
    ## [139] SG SF SG SF PG SF PF PG PG PF PF C  SG PF PG SG PF SF C  SG PG SG SF
    ## [162] PG SG PG C  SG PF C  PF C  PF SF SG SG C  SF C  PG PG SF PG SG PF SG
    ## [185] SG SF C  SG C  SF PF PF SG C  PG C  SF SG C  SF PG C  PG C  SF PF SG
    ## [208] C  SF PG PG SG C  SF PF SG SF SG PG PF SF C  C  PF SG PF C  SF C  SG
    ## [231] SF SG PG PG C  SG SG PF PF PG C  C  SG SF SG PF SG PG C  PG PG C  C 
    ## [254] SG PG PG PF SG C  SG PF SF SF SF SF SG PF PF PF PG C  C  SG SG SF C 
    ## [277] SF PG SF SG PF PG PF PG SF C  SF SF PF PG SG C  PG PF SG SF PF SF C 
    ## [300] SF PF SF PF PG PG PG C  PF SG PG PF SF C  SF PF PF C  PG SG SG SF PG
    ## [323] SG PF SF SG SG PG PF SF SF C  SF PF PF SG PG SG SF PF PG SG SG PG PF
    ## [346] PF SG C  SF C  C  SG SF C  C  SF PF SF C  PF SG SG PG C  PG SF PG C 
    ## [369] SG PG PF PF C  PF PG PF C  SF C  PG SG PG PF SG SG SG PG SG C  C  PG
    ## [392] SG SF PF PG SF C  PF SF SG C  PF C  C  PG PF SF PG SF PG SG SF SF PG
    ## [415] SG C  SG PF PF SF SF SG C  PF C  PG C  C  SG SF SG PF SG PG PF SG PF
    ## [438] PG SF PG C 
    ## Levels: C PF PG SF SG

``` r
table(position)
```

    ## position
    ##  C PF PG SF SG 
    ## 89 89 85 83 95

``` r
#barplot(height, width = 1, space = NULL, names.arg = NULL, legend.text = NULL, beside = FALSE, horiz = FALSE, density = NULL, angle = 45, col = NULL, border = par("fg"), main = NULL, sub = NULL, xlab = NULL, ylab = NULL, xlim = NULL, ylim = NULL, xpd = TRUE, log = "", axes = TRUE, axisnames = TRUE, cex.axis = par("cex.axis"), cex.names = par("cex.axis"), inside = TRUE, plot = TRUE, axis.lty = 0, offset = 0, add = FALSE, args.legend = NULL, ...)
#barplot(position)
```

------------------------------------------------------------------------

-   What things were hard, even though you saw them in class?

-- It is hard to push things to Github. It's also hard to make some of the graphs. Also, for some reason I couldn't load the data with "", I could only do it with ''.

-   What was easy(-ish) even though we haven't done it in class?

--It was easy to type in the functions included in the instructions.

-   What type of "errors" you struggled with (if any)?

-- My box-plot didn't come out. I also found it annoying to visualize the graphs.

-   What are the parts you are not fully understanding?

-- I don't understand what factors are. I also don't understand how to put this on Github. I'm also a little confused about what exactly I'm supposed to turn it.

-   What was the most time consuming part?

-- The most time consuming part was looking at the graphs and figuring out how to visualize the data.

-   Did you collaborate with other students? If so, with who? In what manner?

-- I collaborated with my friend Sruthi, who walked me through how to push this to github. - Was there any frustrating issue? (e.g. RStudio cryptic error, one or more package not playing nice)

-- My most frustrating issue was that the file wouldn't load with double quotations, when it loaded with double quotations a few days before. I also couldn't figure out how make the barplot.
