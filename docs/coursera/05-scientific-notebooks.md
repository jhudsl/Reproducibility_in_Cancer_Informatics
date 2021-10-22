---
title: "Using Notebooks"
---



# Using Notebooks

## Learning Objectives

<img src="resources/images/05-scientific-notebooks_files/figure-html//1LMurysUhCjZb7DVF6KS9QmJ5NBjwWVjRn40MS9f2noE_gf8f405fdab_0_4.png" title="This chapter will demonstrate how to: Use an Integrated Development Environment to aid your development of code. Understand how notebooks can increase the usability and readability of scientific code. Set up code as a notebook. Use the notebook’s interface to interactively develop code." alt="This chapter will demonstrate how to: Use an Integrated Development Environment to aid your development of code. Understand how notebooks can increase the usability and readability of scientific code. Set up code as a notebook. Use the notebook’s interface to interactively develop code." style="display: block; margin: auto;" />

Notebooks are a handy way to have the code, output, and scientist's thought process all documented in one place that is easy for others to read and follow.

The notebook environment is incredibly useful for reproducible data science for a variety of reasons:

#### Reason 1: Notebooks allow for tracking data exploration and encourage the scientist to narrate their thought process:

<img src="resources/images/05-scientific-notebooks_files/figure-html//1LMurysUhCjZb7DVF6KS9QmJ5NBjwWVjRn40MS9f2noE_gf8f405fdab_0_186.png" title="Ruby is looking at her computer that has a lovely notebook with a heatmap! Ruby says ‘Working from this notebook allows me to interactively develop on my data analysis and write down my thoughts about the process all in one place!’" alt="Ruby is looking at her computer that has a lovely notebook with a heatmap! Ruby says ‘Working from this notebook allows me to interactively develop on my data analysis and write down my thoughts about the process all in one place!’" style="display: block; margin: auto;" />

> Each executed code cell is an attempt by the researcher to achieve something and to tease out some insight from the data set. The result is displayed immediately below the code commands, and the researcher can pause and think about the outcome. As code cells can be executed in any order, modified and re-executed as desired, deleted and copied, the notebook is a convenient environment to iteratively explore a complex problem.

[@Fangohr2021]


#### Reason 2: Notebooks allow for easy sharing of results:

<img src="resources/images/05-scientific-notebooks_files/figure-html//1LMurysUhCjZb7DVF6KS9QmJ5NBjwWVjRn40MS9f2noE_gf8f405fdab_0_186.png" title="Ruby the researcher has her computer showing her notebook. Ruby says ‘Avi, here’s some output from this scientific notebook I’ve been developing from!’ Avi the associate says ‘This is so easy to follow and read, even though I didn’t write the code. Thanks for sharing your exciting results!’" alt="Ruby the researcher has her computer showing her notebook. Ruby says ‘Avi, here’s some output from this scientific notebook I’ve been developing from!’ Avi the associate says ‘This is so easy to follow and read, even though I didn’t write the code. Thanks for sharing your exciting results!’" style="display: block; margin: auto;" />

> Notebooks can be converted to html and pdf, and then shared as static read-only documents. This is useful to communicate and share a study with colleagues or managers. By adding sufficient explanation, the main story can be understood by the reader, even if they wouldn't be able to write the code that is embedded in the document.

[@Fangohr2021]

#### Reason 3: Notebooks can be re-ran as a script or developed interactively:

<img src="resources/images/05-scientific-notebooks_files/figure-html//1LMurysUhCjZb7DVF6KS9QmJ5NBjwWVjRn40MS9f2noE_gf9440130d0_0_0.png" title="Ruby is looking at her computer that has a lovely notebook with a heatmap! Ruby says ‘Yay! I just got the data for 5 more samples. Because of my handy notebook set up, I can easily call one command and re-run the analysis so it is updated with the new samples included!’ " alt="Ruby is looking at her computer that has a lovely notebook with a heatmap! Ruby says ‘Yay! I just got the data for 5 more samples. Because of my handy notebook set up, I can easily call one command and re-run the analysis so it is updated with the new samples included!’ " style="display: block; margin: auto;" />

> A common pattern in science is that a computational recipe is iteratively developed in a notebook. Once this has been found and should be applied to further data sets (or other points in some parameter space), the notebook can be executed like a script, for example by submitting these scripts as batch jobs.

[@Fangohr2021]

This can also be handy especially if you use automation to enhance the reproducibility of your analyses (something we will talk about in the advanced part of this course).


Because all of these reasons, we encourage the use of computational notebooks as a means of enhancing reproducibility. (This course itself is also written with the use of notebooks!)

## Exercise: Convert code into a notebook!

For this chapter, we will create notebooks from our example files code.
If you have not followed [these instructions](https://jhudatascience.org/Reproducibility_in_Cancer_Informatics/#how-to-use-this-course.html) to set up your environment for using the example files from this course, you will need to do so before starting on this exercise.


Now choose which version of the example you would like to work with and follow the instructions.  

<details> <summary>Python version of the exercise</summary>

### Set up the example files

To get the _Python project example files_, [click this link](https://github.com/jhudsl/Reproducibility_in_Cancer_Informatics/raw/main/chapter-zips/python-heatmap-chapt-5.zip).



Now double click your chapter zip file to unzip. For Windows you may have to [follow these instructions](https://support.microsoft.com/en-us/windows/zip-and-unzip-files-f6dde0a7-0fec-8294-e1d3-703ed85e7ebc)).



Now let's take a look at the files inside these projects.
We can use the [`ls` command](https://careerkarma.com/blog/linux-ls-command/) to list the files in this folder.


```
## make-heatmap.py
## plots
## raw-data
```

### The task

#### Set up your environment

</details>

<details> <summary>R version of the exercise</summary>

### Set up the example files

To get the _R project examples files_ [click this link](https://github.com/jhudsl/Reproducibility_in_Cancer_Informatics/raw/main/chapter-zips/r-heatmap-chapt-5.zip).
Or you can use these commands in command line.



Now double click your chapter zip file to unzip. For Windows you may have to [follow these instructions](https://support.microsoft.com/en-us/windows/zip-and-unzip-files-f6dde0a7-0fec-8294-e1d3-703ed85e7ebc)).



Now let's take a look at the files inside these projects.
We can use the [`ls` command](https://careerkarma.com/blog/linux-ls-command/) to list the files in this folder.


```
## make_heatmap.R
## raw-data
```

### The task


</details>

Now that you've created your notebook, you are ready to start polishing that code!
