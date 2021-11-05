


# Documenting analyses

## Learning Objectives

![](resources/images/08-readmes_files/figure-docx//1LMurysUhCjZb7DVF6KS9QmJ5NBjwWVjRn40MS9f2noE_gf8379bb805_0_1.png)

## Why documentation?

Documentation is an important but sometimes overlooked part of creating a reproducible analysis! There are two parts of documentation we will discuss here: 1) In notebook descriptions and 2) READMEs

Both these notebook descriptions and READMEs are written in markdown -- a shorthand for html (the same as the documentation parts of your code). If you aren't familiar, markdown is such a handy tool and we encourage you to learn it (it doesn't take too long), here's a [quick guide](https://www.markdownguide.org/cheat-sheet/) to get you started.

### Notebook descriptions

As we [discussed in chapter 5](https://jhudatascience.org/Reproducibility_in_Cancer_Informatics/using-notebooks.html#reason-1-notebooks-allow-for-tracking-data-exploration-and-encourage-the-scientist-to-narrate-their-thought-process), data analyses can lead one on a winding trail of decisions, but notebooks allow you to narrate your thought process as you travel along these analyses explorations!

![](resources/images/08-readmes_files/figure-docx//1LMurysUhCjZb7DVF6KS9QmJ5NBjwWVjRn40MS9f2noE_gf8f405fdab_0_186.png)

**Your scientific notebook should include descriptions that describe:**   

#### The purposes of the notebook

What scientific question are you trying to answer? Describe the dataset you are using to try to answer this and why does it help answer this question?

#### The rationales behind your decisions

Describe why a particular code chunk is doing a particular thing -- the more odd the code looks, the greater need for you to describe why you are doing it.

Describe any particular filters or cutoffs you are using and how did you decide on those?

For data wrangling steps, why are you wrangling the data in such a way -- is this because a certain package you are using requires it?

#### Your observations of the results

What do you think about the results? The plots and tables you show in the notebook -- how do they inform your original questions?

### READMEs!

READMEs are also a great way to help your collaborators get quickly acquainted with the project.

![](resources/images/08-readmes_files/figure-docx//1LMurysUhCjZb7DVF6KS9QmJ5NBjwWVjRn40MS9f2noE_gf8379bb805_0_11.png)

READMEs stick out in a project and are generally universal signal for new people to the project to start by READing them. GitHub automatically will preview your file called "README.md" when someone comes to the main page of your repository which further encourages people looking at your project to read the information in your README.

**Information that should be included in a README:**

1) General purpose of the project
2) Instructions on how to re-run the project
3) Lists of any software required by the project
4) Input and output file descriptions.
5) Descriptions of any additional tools included in the project?

You can take a look at this [template README](https://raw.githubusercontent.com/jhudsl/Reproducibility_in_Cancer_Informatics/main/resources/README-template.md) to get your started.

#### More about writing READMEs:

- [How to write a good README file](https://www.freecodecamp.org/news/how-to-write-a-good-readme-file/)
- [A Beginners Guide to writing a Kicka** README](https://meakaakka.medium.com/a-beginners-guide-to-writing-a-kickass-readme-7ac01da88ab3)
- [How to write an awesome README](https://towardsdatascience.com/how-to-write-an-awesome-readme-68bf4be91f8b)

## Get the exercise project files (or continue with the files you used in the previous chapter)

<details> <summary>**Get the Python project example files**</summary>
[Click this link to download](https://raw.githubusercontent.com/jhudsl/Reproducibility_in_Cancer_Informatics/main/chapter-zips/python-heatmap-chapt-8.zip).



Now double click your chapter zip file to unzip. For Windows you may have to [follow these instructions](https://support.microsoft.com/en-us/windows/zip-and-unzip-files-f6dde0a7-0fec-8294-e1d3-703ed85e7ebc)).


</details>

<details> <summary>**Get the R project example files**</summary>
[Click this link to download](https://raw.githubusercontent.com/jhudsl/Reproducibility_in_Cancer_Informatics/main/chapter-zips/r-heatmap-chapt-8.zip).



Now double click your chapter zip file to unzip. For Windows you may have to [follow these instructions](https://support.microsoft.com/en-us/windows/zip-and-unzip-files-f6dde0a7-0fec-8294-e1d3-703ed85e7ebc)).


</details>

## Exercise 1: Practice beefing up your notebook descriptions

<details> <summary>**Python project exercise**</summary>

1. Start up JuptyerLab with running `juptyer lab` from your command line.
2. Activate your conda environment using `conda activate reproducible-python`.
3. Open up your notebook you've been working on in the previous chapters: `make_heatmap.ipynb`
4. Create a new chunk in your notebook and choose the "Markdown" option in the dropdown menu.


```r
leanbuild::include_slide("https://docs.google.com/presentation/d/1LMurysUhCjZb7DVF6KS9QmJ5NBjwWVjRn40MS9f2noE/edit#slide=id.gfaa026a583_0_30")
```

![](resources/images/08-readmes_files/figure-docx//1LMurysUhCjZb7DVF6KS9QmJ5NBjwWVjRn40MS9f2noE_gfaa026a583_0_30.png)
5. Continue to add more descriptions where you feel is necessary, You can reference the descriptions we have in the ["final" version](https://github.com/jhudsl/reproducible-python-example/blob/main/make_heatmap.ipynb) looks like in the [example Python repository](https://github.com/jhudsl/reproducible-python-example). (Again, _final_ here is in quotes because we may continue to make improvements to this notebook too -- remember what we said about iterative?)

</details>

<details> <summary>**R project exercise**</summary>

1. Open up RStudio.
2. Open up the notebook you created in the previous chapter.  
3. Open up your notebook you've been working on in the previous chapters: `make_heatmap.Rmd`
4. In between code chunks, add more descriptions using Markdown language.
5. You can test how this renders by saving your `.Rmd` and then opening up the resulting `nb.html` file and choosing `View in Browser`.
6. Continue to add more descriptions where you feel is necessary. You can reference the descriptions we have in the ["final" version](https://jhudatascience.org/reproducible-R-example/01-heatmap.nb.html) looks like in the [example R repository](https://github.com/jhudsl/reproducible-R-example). (Again, _final_ here is in quotes because we may continue to make improvements to this notebook too -- remember what we said about iterative?)

</details>

## Exercise 2: Write a README for your project!

1. Download this [template README](https://raw.githubusercontent.com/jhudsl/Reproducibility_in_Cancer_Informatics/main/resources/README-template.md).
2. Fill in the questions inside the `{ }` to create a README for this project.
3. You can reference the "final" versions of the README, but keep in mind it will reference items that we will discuss in the "advanced" portion of this course. See the [R README here](https://github.com/jhudsl/reproducible-R-example) and the [Python README here](https://github.com/jhudsl/reproducible-python-example).

4. Add your README and updated notebook to your GitHub repository. Follow [these instructions to add the latest version of your notebook to your GitHub repository](https://docs.github.com/en/repositories/working-with-files/managing-files/adding-a-file-to-a-repository#adding-a-file-to-a-repository-on-github). Later, we will practice and discuss how to more fully utilize the features of GitHub but for now, just drag and drop it as the instructions linked describe.

**Any feedback you have regarding this exercise is greatly appreciated; you can fill out [this form](https://forms.gle/ygSSwoGaEATA2S65A)!**
