library("ggplot2")
library("palmerpenguins")

ggplot(data=penguins)+geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g))

ggplot(data=penguins)+geom_point(mapping=aes(x=bill_length_mm,y=bill_depth_mm))

ggplot(data=penguins)+geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))

ggplot(data=penguins)+geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species,shape=species))

ggplot(data=penguins)+geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species,shape=species,size=species))

## alpha put a color difference in black and white
ggplot(data=penguins)+geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,alpha=species))

## everything's in the same color
ggplot(data=penguins)+geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g),color="purple")

## plot a smooth line -> show trends
ggplot(data=penguins)+geom_smooth(mapping=aes(x=flipper_length_mm,y=body_mass_g))

## plot a smooth line with scatter points
ggplot(data=penguins)+
  geom_smooth(mapping=aes(x=flipper_length_mm,y=body_mass_g))+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g))

## plot a smooth line for each type of penguins
ggplot(data=penguins)+geom_smooth(mapping=aes(x=flipper_length_mm,y=body_mass_g,linetype=species))

## jitter adds a small random noise to the each point in the plot to make overlapping points easy to find
ggplot(data=penguins)+geom_jitter(mapping=aes(x=flipper_length_mm,y=body_mass_g))

## plot bar charts
ggplot(data=diamonds)+geom_bar(mapping=aes(x=cut))

## add color on the outer side of bars
ggplot(data=diamonds)+geom_bar(mapping=aes(x=cut,color=cut))

## fill color in bars
ggplot(data=diamonds)+geom_bar(mapping=aes(x=cut,fill=cut))

## a stacked bar chart
ggplot(data=diamonds)+geom_bar(mapping=aes(x=cut,fill=clarity))

## facet_wrap creates a plot for each species
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  facet_wrap(~species)
## or
ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g))+
  geom_point(aes(color=species))+
  facet_wrap(~species)

ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=color,fill=cut))+
  facet_wrap(~cut)

## facet_grid splits the plot into facets vertically by the value of the first variable and horizontally by the value of the second variable.
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  facet_grid(sex~species)

## focus on one variable -> plot is the same as facet_wrap
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  facet_grid(~species)

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  facet_grid(~sex)

## add titles
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length")

## add subtitles
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length", subtitle="Sample of Three Penguin Species")

## add captions
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length", subtitle="Sample of Three Penguin Species", 
       caption="Data collected by Dr. Kristen Gormen")

## add text inside graph
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length", subtitle="Sample of Three Penguin Species", 
       caption="Data collected by Dr. Kristen Gormen")+
  annotate("text",x=218,y=3500,label="The Gentoos are the largest")

## add color, text shape, text size, and angle
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length", subtitle="Sample of Three Penguin Species", 
       caption="Data collected by Dr. Kristen Gormen")+
  annotate("text",x=218,y=3500,label="The Gentoos are the largest",color="purple",
           fontface="bold",size=4.5, angle=30)

p <- ggplot(data=penguins)+geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length", subtitle="Sample of Three Penguin Species", 
       caption="Data collected by Dr. Kristen Gormen")
p+annotate("text",x=218,y=3500,label="The Gentoos are the largest",color="purple",
           fontface="bold",size=4.5, angle=30)

## save plots
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))
ggsave("Three_Penguin_Species.png")
