

library(tidyverse)
library(lingStuff)

class_vowels <- tribble(

~`name`,    ~`group`, ~`vowel`, ~`f1`, ~`f2`, 
 'joseph',   'm',      'i',       296,  2401, 
 'joseph',   'm',      'a',       794,  1367, 
 'joseph',   'm',      'u',       305,  770,
 'oni',      'f',      'i',       401, 2208, 
 'oni',      'f',      'a',       804, 1590, 
 'oni',      'f',      'u',       536, 1606, 
 'emily',    'f',      'i',       361, 2410,
 'emily',    'f',      'a',       795, 1381,
 'emily',    'f',      'u',       401, 1043,
 'michaela', 'f',      'i',       321, 2776, 
 'michaela', 'f',      'a',       992, 1249, 
 'michaela', 'f',      'u',       341, 1273, 
 'tasneem',  'f',      'i',       743, 2642, 
 'tasneem',  'f',      'a',       790, 2157, 
 'tasneem',  'f',      'u',       596, 2013,
 'megan',    'f',      'i',       268, 2392,
 'megan',    'f',      'a',       1002, 1426,
 'megan',    'f',      'u',       403, 963,
 'jason',    'm',      'i',       683, 702, 
 'jason',    'm',      'a',       839, 1004, 
 'jason',    'm',      'u',       806, 800,
 'rene',     'm',      'i',       391, 1954, 
 'rene',     'm',      'a',       863, 1604, 
 'rene',     'm',      'u',       493, 1157, 
 'jessica',  'f',      'i',       308, 881, 
 'jessica',  'f',      'a',       849, 1170, 
 'jessica',  'f',      'u',       384, 797,
 'angelica', 'f',      'i',       474, 2838, 
 'angelica', 'f',      'a',       994, 1528,
 'angelica', 'f',      'u',       431, 1218,
 'keshav',   'm',      'i',       414, 2122,
 'keshav',   'm',      'a',       784, 1342,
 'keshav',   'm',      'u',       426, 1308, 
 'sarah',    'f',      'i',       883, 1679, 
 'sarah',    'f',      'a',       661, 2053, 
 'sarah',    'f',      'u',       492, 1993,
 'meghana',  'f',      'i',       490, 2195,
 'meghana',  'f',      'a',       903, 1763,
 'meghana',  'f',      'u',       464, 1266,
 'lucile',   'f',      'i',       370, 2029, 
 'lucile',   'f',      'a',       668, 1343, 
 'lucile',   'f',      'u',       754, 1533, 
 'joshua',   'm',      'i',       425, 2018, 
 'joshua',   'm',      'a',       735, 1334, 
 'joshua',   'm',      'u',       558, 1376

)

class_vowels %>% 
filter(., group == 'f') %>% 
vowel_plot(data = ., 
           vowel = 'vowel', 
           f1 = 'f1', 
           f2 = 'f2', 
           group = NULL)


vowel_plot(data = vowel_data, vowel = 'vowel', f1 = 'f1', f2 = 'f2', group = NULL)


















