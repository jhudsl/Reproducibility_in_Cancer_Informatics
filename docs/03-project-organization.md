


# Organizing your project

## Learning Objectives

![](resources/images/03-project-organization_files/figure-docx//1LMurysUhCjZb7DVF6KS9QmJ5NBjwWVjRn40MS9f2noE_gf7bed24491_1_51.png)

Keeping your files organized is a skill that has a high long-term payoff. As you are in the thick of an analysis, you may underestimate how many files and terms you have floating around. But a short time later, you may return to your files and realize your organization was not as clear as you hoped.   

![](resources/images/03-project-organization_files/figure-docx//1LMurysUhCjZb7DVF6KS9QmJ5NBjwWVjRn40MS9f2noE_gf7bed24491_1_56.png)

@Tayo2019 discusses four particular reasons why it is important to organize your project:

> 1. Organization increases productivity. If a project is well organized, with everything placed in one directory, it makes it easier to avoid wasting time searching for project files such as datasets, codes, output files, and so on.
> 2. A well-organized project helps you to keep and maintain a record of your ongoing and completed data science projects.
> 3. Completed data science projects could be used for building future models. If you have to solve a similar problem in the future, you can use the same code with slight modifications.
> 4. A well-organized project can easily be understood by other data science professionals when shared on platforms such as Github.

Organization is yet another aspect of reproducibility that saves you and your colleagues time!

![](resources/images/03-project-organization_files/figure-docx//1LMurysUhCjZb7DVF6KS9QmJ5NBjwWVjRn40MS9f2noE_gf7bed24491_1_180.png)

## Organizational strategies

There's a lot of ways to keep your files organized, and there's not a "one size fits all" organizational solution [@Shapiro2021]. In this chapter, we will discuss some generalities but as far as specifics we will point you to others' who have written about works for them and advise that you use them as inspiration to figure out a strategy that works for you and your team.

The most important aspects of your project organization scheme is that it:  

- Is [project-oriented](https://www.tidyverse.org/blog/2017/12/workflow-vs-script/) [@Bryan2017].  
- Follows consistent patterns [@Shapiro2021].  
- Is easy for you and others to find the files you need quickly [@Shapiro2021].  
- Minimizes the likelihood for errors (like writing over files accidentally) [@Shapiro2021].  
- Is something maintainable [@Shapiro2021]!

### Tips for organizing your project:   

Getting more specific, here's some ideas of how to organize your project:  

- **Make file names informative** to those who don't have knowledge of the project but avoid using spaces, quotes, or unusual characters in your filenames and folders -- these only serve to make reading in files a nightmare in some programs.
- **Number scripts** in the order that they are run.
- **Keep like-files together** in their own directory: results tables with other results tables, etc. _Including most importantly keeping raw data separate from processed data or other results!_
- **Put source scripts and functions in their own directory**. Things that should never need to be called directly by yourself or anyone else.
- **Put output in its own directories** like `results` and `plots`.
- **Have a central document (like a README)** that describes the basic information about the analysis and how to re-run it.
- Make it easy on yourself, **dates aren't necessary**. The computer keeps track of those.
- **Make a central script that re-runs everything** -- including the creation of the folders! (more on this in a later chapter)

Let's see what these principles might look like put into practice.

#### Example organizational scheme  

Here's an example of what this might look like:
```
project-name/
├── run_analysis.sh
├── 00-download-data.sh
├── 01-make-heatmap.Rmd
├── README.md
├── plots/
│   └── project-name-heatmap.png
├── results/
│   └── top_gene_results.tsv
├── raw-data/
│   ├── project-name-raw.tsv
│   └── project-name-metadata.tsv
├── processed-data/
│   ├── project-name-quantile-normalized.tsv
└── util/
    ├── plotting-functions.R
    └── data-wrangling-functions.R
```

**What these hypothetical files and folders contain:**

- `run_analysis.sh` - A central script that runs everything again
- `00-download-data.sh` - The script that needs to be run first and is called by run_analysis.sh
- `01-make-heatmap.Rmd` - The script that needs to be run second and is also called by run_analysis.sh
- `README.md` - The document that has the information that will orient someone to this project, we'll discuss more about how to create a helpful README in [an upcoming chapter](https://jhudatascience.org/Reproducibility_in_Cancer_Informatics/documenting-analyses.html#readmes).
- `plots` - A folder of plots and resulting images
- `results` - A folder results
- `raw-data` - Data files as they first arrive and **nothing** has been done to them yet.
- `processed-data` - Data that has been modified from the raw in some way.
- `util` - A folder of utilities that never needs to be called or touched directly unless troubleshooting something

## Readings about organizational strategies for data science projects:

But you don't have to take my organizational strategy, there are lots of ideas out there.
You can read through some of these articles to think about what kind of organizational strategy might work for you and your team:   

- [Jenny Bryan's organizational strategy](https://www.stat.ubc.ca/~jenny/STAT545A/block19_codeFormattingOrganization.html) [@Bryan2021].
- [Jenny Bryan on Project-oriented workflows](https://www.tidyverse.org/blog/2017/12/workflow-vs-script/)[@Bryan2017].
- [Data Carpentry mini-course about organizing projects](https://datacarpentry.org/organization-genomics/) [@DataCarpentry2021].
- [Andrew Severin's strategy for organization](https://bioinformaticsworkbook.org/projectManagement/Intro_projectManagement.html#gsc.tab=0) [@Severin2021].
- [A BioStars thread where many individuals share their own organizational strategies](https://www.biostars.org/p/821/) [@Biostars2021].
- [Data Carpentry course chapter about getting organized](https://bioinformatics-core-shared-training.github.io/shell-genomics/07-organization/index.html) [@DataCarpentry2019].

## Get the exercise project files (or continue with the files you used in the previous chapter)

<details> <summary>**Get the Python project example files**</summary>
[Click this link to download](https://raw.githubusercontent.com/jhudsl/Reproducibility_in_Cancer_Informatics/main/chapter-zips/python-heatmap-chapt-3.zip).



Now double click your chapter zip file to unzip. For Windows you may have to [follow these instructions](https://support.microsoft.com/en-us/windows/zip-and-unzip-files-f6dde0a7-0fec-8294-e1d3-703ed85e7ebc)).


</details>

<details> <summary>**Get the R project example files**</summary>
[Click this link to download](https://raw.githubusercontent.com/jhudsl/Reproducibility_in_Cancer_Informatics/main/chapter-zips/r-heatmap-chapt-3.zip).



Now double click your chapter zip file to unzip. For Windows you may have to [follow these instructions](https://support.microsoft.com/en-us/windows/zip-and-unzip-files-f6dde0a7-0fec-8294-e1d3-703ed85e7ebc)).


</details>

## Exercise: Organize your project!

1. Create a `plots`, `results`, and `data` folder and organize the files into their respective folders. Note that `aggregated_metadata.json` and `LICENSE.TXT` also belong in the `data` folder.  
2. Delete any files that say "OLD". Keeping multiple versions of your scripts around is a recipe for mistakes and confusion. In the advanced course we will discuss how to use version control to help you track this more elegantly.  

After your files are organized, you are ready to move on to the next chapter and create a notebook!


**Any feedback you have regarding this exercise is greatly appreciated; you can fill out [this form](https://forms.gle/ygSSwoGaEATA2S65A)!**
