library(readr)
TV <- read_csv("Twitter. Validation.csv")
View(TV)
TV %>% 
  select(c('Platform','Opinion')) %>%
  filter(Platform %in% c("Facebook", "Amazon")) %>% 
  filter(Opinion %in% c("Irrelevant", "Positive", "Negative", "Neutral")) %>%
  group_by(Platform) %>%
  count(Opinion) %>% 
  ggplot()+geom_col(aes(x=Opinion,fill=Opinion, y=n),position = "dodge",
                    color="red", fill="pink")+ facet_grid("Platform")+
  theme_light()+
  labs(title="Public Opinion Towards Apps", 
       subtitle = "Bar Chart",
       caption="Source: Kaggle.com")
 
