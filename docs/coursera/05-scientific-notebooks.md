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

## Get the exercise project files (or continue with the files you used in the previous chapter)

<details> <summary>How to get the _Python project example files_</summary>
To get the _Python project example files_, [click this link](https://raw.githubusercontent.com/jhudsl/Reproducibility_in_Cancer_Informatics/main/chapter-zips/python-heatmap-chapt-5.zip).



Now double click your chapter zip file to unzip. For Windows you may have to [follow these instructions](https://support.microsoft.com/en-us/windows/zip-and-unzip-files-f6dde0a7-0fec-8294-e1d3-703ed85e7ebc)).


</details>

<details> <summary>How to get the _R project example files_</summary>
To get the _R project example files_, [click this link](https://raw.githubusercontent.com/jhudsl/Reproducibility_in_Cancer_Informatics/main/chapter-zips/r-heatmap-chapt-5.zip).



Now double click your chapter zip file to unzip. For Windows you may have to [follow these instructions](https://support.microsoft.com/en-us/windows/zip-and-unzip-files-f6dde0a7-0fec-8294-e1d3-703ed85e7ebc)).


</details>

## Exercise: Convert code into a notebook!

### Set up your IDE

For this chapter, we will create notebooks from our example files code. Notebooks work best with the integrated development environment (IDE) they were created to work with. IDE's are sets of tools that help you develop your code. They are part "point and click" and part command line and include lots of visuals that will help guide you.

<details> <summary>Set up a Python IDE</summary>

### Install JupyterLab

1. We advise using the `conda` method to install JupyterLab, because we will return to talk more about `conda` later on, so [if you don't have conda, you will need to install that first](https://conda.io/projects/conda/en/latest/user-guide/install/index.html#installation).

To install conda using command line will look something like this in command line (but you will have to change depending on your operating system
```
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh \
mkdir /root/.conda \
bash Miniconda3-latest-Linux-x86_64.sh -b \
rm -f Miniconda3-latest-Linux-x86_64.sh 

conda --version
```

2. Then, [following the instructions](https://jupyterlab.readthedocs.io/en/stable/getting_started/installation.html), install JupyterLab using this command in your [command line window](https://towardsdatascience.com/a-quick-guide-to-using-command-line-terminal-96815b97b955#:~:text=Opening%20Command%20Line.&text=There%20are%20varying%20ways%20of,and%20press%20the%20return%20key.): 

```
conda install -c conda-forge jupyterlab
```

3. If you installed JupyterLab successfully, you can run `jupyter lab` in your command line window and a window will open in your browser. (Note that if run this multiple times, you will need to close one of your JupyterLab browser windows, or follow their documentation to set a password). 

### Getting familiar with JupyterLab's interface

> The JupyterLab interface consists of a main work area containing tabs of documents and activities, a collapsible left sidebar, and a menu bar. The left sidebar contains a file browser, the list of running kernels and terminals, the command palette, the notebook cell tools inspector, and the tabs list.

<img src="resources/images/05-scientific-notebooks_files/figure-html//1LMurysUhCjZb7DVF6KS9QmJ5NBjwWVjRn40MS9f2noE_gf62875ddf7_0_469.png" title="The JupyterLab interface consists of a main work area containing tabs of documents and activities, a collapsible left sidebar, and a menu bar. The left sidebar contains a file browser, the list of running kernels and terminals, the command palette, the notebook cell tools inspector, and the tabs list.’ " alt="The JupyterLab interface consists of a main work area containing tabs of documents and activities, a collapsible left sidebar, and a menu bar. The left sidebar contains a file browser, the list of running kernels and terminals, the command palette, the notebook cell tools inspector, and the tabs list.’ " style="display: block; margin: auto;" />

> The menu bar at the top of JupyterLab has top-level menus that expose actions available in JupyterLab with their keyboard shortcuts. The default menus are:

> File: actions related to files and directories
Edit: actions related to editing documents and other activities
View: actions that alter the appearance of JupyterLab
Run: actions for running code in different activities such as notebooks and code consoles
Kernel: actions for managing kernels, which are separate processes for running code
Tabs: a list of the open documents and activities in the dock panel
Settings: common settings and an advanced settings editor
Help: a list of JupyterLab and kernel help links


</details>

<details> <summary>Set up an R IDE</summary>

### Install RStudio

1. [Install RStudio](https://www.rstudio.com/products/rstudio/download/) (and [install R first](https://repo.miserver.it.umich.edu/cran/) if you have not already).
2. After you've downloaded the Rstudio installation file, double click on it and follow along with the installation prompts.  
3. Open up the RStudio application by double clicking on it.

### Getting familiar with RStudio's interface

<img src="resources/images/05-scientific-notebooks_files/figure-html//1LMurysUhCjZb7DVF6KS9QmJ5NBjwWVjRn40MS9f2noE_gf8f405fdab_0_225.png" style="display: block; margin: auto;" />

> The RStudio environment has four main **panes**, each of which may have a number of tabs that display different information or functionality. (their specific location can be changed under Tools -> Global Options -> Pane Layout).

> 1. The **Editor** pane is where you can write R scripts and other documents. Each tab here is its own document.
This is your _text editor_, which will allow you to save your R code for future use.
Note that change code here will not run automatically until you run it.

> 2. The **Console** pane is where you can _interactively_ run R code.
  + There is also a **Terminal** tab here which can be used for running programs outside R on your computer

> 3. The **Environment** pane primarily displays the variables, sometimes known as _objects_ that are defined during a given R session, and what data or values they might hold.

> 4. The **Help viewer** pane has several tabs all of which are pretty important:
    + The **Files** tab shows the structure and contents of files and folders (also known as directories) on your computer.
    + The **Plots** tab will reveal plots when you make them
    + The **Packages** tab shows which installed packages have been loaded into your R session
    + The **Help** tab will show the help page when you look up a function
    + The **Viewer** pane will reveal compiled R Markdown documents

From @Shapiro_Childhood_Cancer_Data_2021

For even more navigation info see the [RStudio IDE Cheatsheet (pdf)](https://github.com/rstudio/cheatsheets/raw/master/rstudio-ide.pdf).

</details>

### Create a notebook!

Now, in your respective IDE, we'll turn our unreproducible scripts into notebooks. In the next chapter we will begin to dive into the code itself, but for now, we'll get the notebook ready to go.

<details> <summary>Set up a Python notebook</summary>

1. Start a new notebook by going to `New` > `Notebook`.
2. Then open up this chapter’s example code folder and open the `make-heatmap.py` file.


```r
leanbuild::include_slide("https://docs.google.com/presentation/d/1LMurysUhCjZb7DVF6KS9QmJ5NBjwWVjRn40MS9f2noE/edit#slide=id.gf8f405fdab_0_225")
```

<img src="resources/images/05-scientific-notebooks_files/figure-html//1LMurysUhCjZb7DVF6KS9QmJ5NBjwWVjRn40MS9f2noE_gf8f405fdab_0_225.png" title="In Jupyter, you can create a new notebook by going to New &gt; Notebook. Then open up this chapter’s example code folder and open the make-heatmap.py file." alt="In Jupyter, you can create a new notebook by going to New &gt; Notebook. Then open up this chapter’s example code folder and open the make-heatmap.py file." style="display: block; margin: auto;" />

4. Now copy and paste all of the code from `make-heatmap.py` into a new chunk. We will later break up this large chunk of code into smaller chunks that are thematic in the next chapter.
5. Save your `Untitled.ipynb` file as something that tells us what it will end up doing like `make-heatmap.ipynb`.

</details>

<details> <summary>Set up an R notebook</summary>

1. Start a new notebook by going to `File` > `New Files` > `R Notebook`.
2. Then open up this chapter’s example code folder and open the `make_heatmap.R` file.


```r
leanbuild::include_slide("https://docs.google.com/presentation/d/1LMurysUhCjZb7DVF6KS9QmJ5NBjwWVjRn40MS9f2noE/edit#slide=id.gfaa026a583_0_13")
```

<img src="resources/images/05-scientific-notebooks_files/figure-html//1LMurysUhCjZb7DVF6KS9QmJ5NBjwWVjRn40MS9f2noE_gfaa026a583_0_13.png" title="In RStudio, you can create a new notebook by going to File &gt; New Files &gt; R Notebook. Then open up this chapter’s example code folder and open the make_heatmap.R file." alt="In RStudio, you can create a new notebook by going to File &gt; New Files &gt; R Notebook. Then open up this chapter’s example code folder and open the make_heatmap.R file." style="display: block; margin: auto;" />

3. Practice creating a new chunk in your R notebook by clicking the `Insert Chunk` button on the toolbar or by pressing `Cmd+Option+I`. (You can also manually type out the back ticks and `{}`)
4. Delete all the default text in this notebook.
5. Now copy and paste all of the code from `make_heatmap.R` into a new chunk. We will later break up this large chunk of code into smaller chunks that are thematic in the next chapter.
6. Save your untitled.Rmd into something that tells us what it will end up doing like `make-heatmap.Rmd`.
7. Notice that upon saving your `.Rmd` file, a new file `.nb.html` file of the same name is created. Open that file and choose `view in Browser`.
8. This shows the nicely rendered version of your analysis and snapshots whatever output existed when the `.Rmd` file was saved.

</details>

Now that you've created your notebook, you are ready to start polishing that code!