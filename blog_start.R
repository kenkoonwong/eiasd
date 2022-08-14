library(blogdown)
new_site(theme = "wowchemy/starter-academic")

blogdown::serve_site()

blogdown::new_post(title = "Hi Hugo", 
                   ext = '.Rmarkdown', 
                   subdir = "post")

blogdown::config_Rprofile() 
# paste this 
options(
  # to automatically serve the site on RStudio startup, set this option to TRUE
  blogdown.serve_site.startup = FALSE,
  # to disable knitting Rmd files on save, set this option to FALSE
  blogdown.knit.on_save = FALSE     
  blogdown.author = "Ken Koon Wong",  
  blogdown.ext = ".Rmarkdown",      
  blogdown.subdir = "post"          
)

blogdown::serve_site()

# new post
```{r}
summary(Orange)
```

```{r echo=FALSE}
library(ggplot2)
oplot <- ggplot(Orange, aes(x = age, 
                            y = circumference, 
                            colour = Tree)) +
  geom_point() +
  geom_line() +
  guides(colour = FALSE) +
  theme_bw()
oplot
```

# edit gitignore
file.edit(".gitignore")
.Rproj.user
.Rhistory
.RData
.Ruserdata
.DS_Store
Thumbs.db

blogdown::config_netlify()
baseurl = "https://kenkoonwong.netlify.com"


rstudioapi::navigateToFile("config/_default/params.yaml")


rstudioapi::navigateToFile("config/_default/menus.yaml")


rstudioapi::navigateToFile("config/_default/config.yaml")


rstudioapi::navigateToFile("content/authors/admin/_index.md")

# change widget
rstudioapi::navigateToFile("content/home/hero.md", line = 5, column = 10)


blogdown::stop_server()
