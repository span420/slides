
library(tidyverse)
library(lingStuff)

class_rts <- tribble(

~`name`,    ~`type`, ~`codeswitch`, ~`task`,    ~`status`,    ~`time`, 
 'oni',      'l2',     45,            'flanker',  'congruent',   537, 
 'oni',      'l2',     45,            'flanker',  'incongruent', 562, 
 'oni',      'l2',     45,            'stroop',   'congruent',   13, 
 'oni',      'l2',     45,            'stroop',   'incongruent', 21, 
 'emily',    'bi',     45,            'flanker',  'congruent',   451,
 'emily',    'bi',     45,            'flanker',  'incongruent', 538,
 'emily',    'bi',     45,            'stroop',   'congruent',   8.3,
 'emily',    'bi',     45,            'stroop',   'incongruent', 15.1,
 'michaela', 'l2',     45,            'flanker',  'congruent',   676, 
 'michaela', 'l2',     45,            'flanker',  'incongruent', 803, 
 'michaela', 'l2',     45,            'stroop',   'congruent',   11, 
 'michaela', 'l2',     45,            'stroop',   'incongruent', 22, 
 'tasneem',  'bi',     45,            'flanker',  'congruent',   604, 
 'tasneem',  'bi',     45,            'flanker',  'incongruent', 947, 
 'tasneem',  'bi',     45,            'stroop',   'congruent',   8, 
 'tasneem',  'bi',     45,            'stroop',   'incongruent', 35,
 'megan',    'l2',     45,            'flanker',  'congruent',   499,
 'megan',    'l2',     45,            'flanker',  'incongruent', 585,
 'megan',    'l2',     45,            'stroop',   'congruent',    11,
 'megan',    'l2',     45,            'stroop',   'incongruent',  18,
 'jason',    'bi',     45,            'flanker',  'congruent',    476, 
 'jason',    'bi',     45,            'flanker',  'incongruent',  552, 
 'jason',    'bi',     45,            'stroop',   'congruent',   10, 
 'jason',    'bi',     45,            'stroop',   'incongruent',  19,
 'angelica', 'l2',     45,            'flanker',  'congruent',   602, 
 'angelica', 'l2',     45,            'flanker',  'incongruent', 554, 
 'angelica', 'l2',     45,            'stroop',   'congruent',   12.24,
 'angelica', 'l2',     45,            'stroop',   'incongruent', 19.46,
 'keshav',   'bi',     45,            'flanker',  'congruent',   396,
 'keshav',   'bi',     45,            'flanker',  'incongruent', 433,
 'keshav',   'bi',     45,            'stroop',   'congruent',   11.4,
 'keshav',   'bi',     45,            'stroop',   'incongruent', 14.8, 
 'meghana',  'bi',     45,            'flanker',  'congruent',   617,
 'meghana',  'bi',     45,            'flanker',  'incongruent', 566,
 'meghana',  'bi',     45,            'stroop',   'congruent',   11,
 'meghana',  'bi',     45,            'stroop',   'incongruent', 17,
 'lucile',   'l2',     45,            'flanker',  'congruent',   460, 
 'lucile',   'l2',     45,            'flanker',  'incongruent', 476, 
 'lucile',   'l2',     45,            'stroop',   'congruent',   9, 
 'lucile',   'l2',     45,            'stroop',   'incongruent', 19, 
 'joshua',   'l2',     45,            'flanker',  'congruent',   785, 
 'joshua',   'l2',     45,            'flanker',  'incongruent', 831, 
 'joshua',   'l2',     45,            'stroop',   'congruent',   11, 
 'joshua',   'l2',     45,            'stroop',   'incongruent', 22, 
 'magdiel',  'bi',     45,            'flanker',  'congruent', 427,
 'magdiel',  'bi',     45,            'flanker',  'incongruent', 411,
 'magdiel',  'bi',     45,            'stroop',   'congruent', 7.2,
 'magdiel',  'bi',     45,            'stroop',   'incongruent', 15.8

)


class_rts %>%
  filter(., task == "flanker") %>% 
  ggplot(., aes(x = type, y = time, fill = status)) + 
    geom_boxplot()

class_rts %>%
  filter(., task == "stroop") %>% 
  ggplot(., aes(x = type, y = time, color = status, label = name)) + 
    geom_text()

class_rts %>%
  filter(., task == "flanker") %>% 
  group_by(name, status, type) %>% 
  summarize(., rt = mean(time)) %>%
  ggplot(., aes(x = type, y = rt)) + 
    geom_point()


class_rts %>%
  filter(., task == "stroop") %>% 
  ggplot(., aes(x = status, y = time)) + 
    geom_boxplot()

class_rts %>%
  filter(., task == "stroop") %>% 
  group_by(name, status, type) %>% 
  summarize(., rt = mean(time)) %>%
  ggplot(., aes(x = type, y = rt)) + 
    geom_point()


class_rts %>% 
  filter(., task == "stroop") %>% 
  spread(., status, time) %>% 
  mutate(., effect = incongruent - congruent) %>% 
  ggplot(., aes(x = type, y = effect))+
    geom_boxplot()

class_rts %>% 
  filter(., task == "flanker") %>% 
  spread(., status, time) %>% 
  mutate(., effect = incongruent - congruent) %>% 
  ggplot(., aes(x = type, y = effect))+
    geom_boxplot()











