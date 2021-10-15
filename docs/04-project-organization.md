---
title: "Organizing your project"
---



# Organizing your project

## Learning Objectives

<img src="resources/images/04-project-organization_files/figure-html//1LMurysUhCjZb7DVF6KS9QmJ5NBjwWVjRn40MS9f2noE_gf7bed24491_1_51.png" title="This chapter will demonstrate how to: Identify what aspects make an analysis project more easily navigable. Set up a project with an organizational scheme that will work for the author and their colleagues." alt="This chapter will demonstrate how to: Identify what aspects make an analysis project more easily navigable. Set up a project with an organizational scheme that will work for the author and their colleagues." style="display: block; margin: auto;" />

Keeping your files organized is a skill that has a high long-term pay off.As you are in the thick of an analysis, you may underestimate how many files and terms you have floating around. But a short time later, you may return to your files and realize your organization was not as clear as you hoped.   

<img src="resources/images/04-project-organization_files/figure-html//1LMurysUhCjZb7DVF6KS9QmJ5NBjwWVjRn40MS9f2noE_gf7bed24491_1_56.png" title="Ruby is looking at her computer with a lot of folders with different variations on similar names. Ruby asks herself: Which plot was was the edition from the most recent version of the data?" alt="Ruby is looking at her computer with a lot of folders with different variations on similar names. Ruby asks herself: Which plot was was the edition from the most recent version of the data?" style="display: block; margin: auto;" />

@Tayo2019 discusses four particular reasons why it is important to organize your project:

> 1. Organization increases productivity. If a project is well organized, with everything placed in one directory, it makes it easier to avoid wasting time searching for project files such as datasets, codes, output files, and so on.
> 2. A well-organized project helps you to keep and maintain a record of your ongoing and completed data science projects.
> 3. Completed data science projects could be used for building future models. If you have to solve a similar problem in the future, you can use the same code with slight modifications.
> 4. A well-organized project can easily be understood by other data science professionals when shared on platforms such as Github.

Organization is yet another aspect of reproducibility that saves you and your colleagues time!

<img src="resources/images/04-project-organization_files/figure-html//1LMurysUhCjZb7DVF6KS9QmJ5NBjwWVjRn40MS9f2noE_gf7bed24491_1_180.png" title="Ruby is looking at her computer that has clearly named folders and files. Ruby says to herself: I read my README to get me back up to speed with this project. Now I know that I can run a single command to call run_analysis.sh to re-run my analysis." alt="Ruby is looking at her computer that has clearly named folders and files. Ruby says to herself: I read my README to get me back up to speed with this project. Now I know that I can run a single command to call run_analysis.sh to re-run my analysis." style="display: block; margin: auto;" />

## Organizational strategies

There's a lot of ways to keep your files organized, and there's not a "one size fits all" organizational solution [@Shapiro_Childhood_Cancer_Data_2021]. In this chapter, we will discuss some generalities but as far as specifics we will point you to others' who have written about works for them and advise that you use them as inspiration to figure out a strategy that works for you and your team.

The most important aspects of your project organization scheme is that it:  

- Is [project-oriented](https://www.tidyverse.org/blog/2017/12/workflow-vs-script/) [@Bryan2017].  
- Follows consistent patterns.  
- Is easy for you and others to find the files you need quickly.  
- Minimizes the likelihood for errors (like writing over files accidentally).  
[@Shapiro_Childhood_Cancer_Data_2021]


### Readings about organizational strategies for data science projects:

- [Jenny Bryan's organizational strategy](https://www.stat.ubc.ca/~jenny/STAT545A/block19_codeFormattingOrganization.html) [@Bryan2021].
- [Jenny Bryan on Project-oriented workflows](https://www.tidyverse.org/blog/2017/12/workflow-vs-script/)[@Bryan2017].
- [Data Carpentry mini course about organizing projects](https://datacarpentry.org/organization-genomics/) [@DataCarpentry2021].
https://bioinformaticsworkbook.org/projectManagement/Intro_projectManagement.html#gsc.tab=0
- [A BioStars thread where many individuals share their own organizational strategies](https://www.biostars.org/p/821/) [@Biostars2021].
- [Data Carpentry course chapter about getting organized](https://bioinformatics-core-shared-training.github.io/shell-genomics/07-organization/index.html) [@DataCarpentry2019].


### Exercise: Organize your project!

#### Get the example project files for this chapter

For this chapter, we will organize our example project files!

To get the _Python project example files_, copy and paste these commands below into your command line and press Enter.


```bash
mkdir -p chapter-zips
wget -O chapter-zips/python-heatmap-chapt-4.zip https://raw.githubusercontent.com/jhudsl/Reproducibility-Examples/main/chapter-zips/python-heatmap-chapt-4.zip
```

To get the _R project examples files_ copy and paste these commands below into your command line and press Enter.


```bash
mkdir -p chapter-zips
wget -O chapter-zips/r-heatmap-chapt-4.zip https://raw.githubusercontent.com/jhudsl/Reproducibility-Examples/main/chapter-zips/r-heatmap-chapt-4.zip
```

Now double click your chapter zip file to unzip. For Windows you may have to [follow these instructions](https://support.microsoft.com/en-us/windows/zip-and-unzip-files-f6dde0a7-0fec-8294-e1d3-703ed85e7ebc)).


```bash
unzip chapter-zips/python-heatmap-chapt-4.zip
unzip chapter-zips/r-heatmap-chapt-4.zip
```

Now let's take a look at what these projects look like.

Python version

```
## aggregated_metadata.json
## aml_heatmap.png
## analysis_OLD.py
## analysis.py
## dataset.zip
## LICENSE.TXT
## metadata_SRP070849.tsv
## SRP070849.tsv
```

R version:

```
## heatmap_up_to_date_OLD.R
## heatmap_up_to_date.R
## LICENSE.TXT
## metadata_SRP070849.tsv
## SRP070849.tsv
```
