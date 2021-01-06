# penguins analysis using random forest and classification tree
# Penguin dataset overview
The penguin dataset is about measurements for adult foraging penguins near Palmer Station, Antarctica.
Includes measurements for penguin species, island in Palmer Archipelago, size (flipper length, body mass, bill dimensions), and sex. 

This dataset contains 344 rows and 8 variables:

*species*

a factor denoting penguin species (Adélie, Chinstrap and Gentoo)

*island*
a factor denoting island in Palmer Archipelago, Antarctica (Biscoe, Dream or Torgersen)

*bill_length_mm*
a number denoting bill length (millimeters)

*bill_depth_mm*
a number denoting bill depth (millimeters)

*flipper_length_mm*
an integer denoting flipper length (millimeters)

*body_mass_g*
an integer denoting body mass (grams)

*sex*
a factor denoting penguin sex (female, male)

*year*
an integer denoting the study year (2007, 2008, or 2009)

# Random Forest

My question here is that If I have 344 penguins and I want to know which species the penguins belong to, and I only know their features like *bill_length_mm* or *body_mass_g*, would the *species* variable predict the species for me using these features ?

I will use random forest to answer this pattern recognition problem. 

so the response variable is Y= *species* and the 7 other predictors would be the covariates 

First let's take a look on the data:

I'll use a package called 'randomForest'
