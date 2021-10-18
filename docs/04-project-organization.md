---
title: "Organizing your project"
output:
  bookdown::html_document2:
    includes:
      in_header: assets/header.html
  bookdown::gitbook:
    includes:
      in_header: assets/header.html
---



# Organizing your project

## Learning Objectives

<img src="resources/images/04-project-organization_files/figure-html//1LMurysUhCjZb7DVF6KS9QmJ5NBjwWVjRn40MS9f2noE_gf7bed24491_1_51.png" title="This chapter will demonstrate how to: Identify what aspects make an analysis project more easily navigable. Set up a project with an organizational scheme that will work for the author and their colleagues." alt="This chapter will demonstrate how to: Identify what aspects make an analysis project more easily navigable. Set up a project with an organizational scheme that will work for the author and their colleagues." style="display: block; margin: auto;" />

Keeping your files organized is a skill that has a high long-term pay off. As you are in the thick of an analysis, you may underestimate how many files and terms you have floating around. But a short time later, you may return to your files and realize your organization was not as clear as you hoped.   

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
- Is something maintainable!

[@Shapiro_Childhood_Cancer_Data_2021]

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
├── run_analysis.sh # Central script that runs everything again
├── 00-download-data.sh # The script that needs to be run first and is called by run_analysis.sh
├── 01-make-heatmap.Rmd # The script that needs to be run second and is also called by run_analysis.sh
├── README.md # The document that has the information that will orient someone to this project
├── plots/ # A folder of plots and resulting images
│   └── project-name-heatmap.png
├── results/ # A folder results
│   └── top_gene_results.tsv
├── raw-data/ # data files as they first arrive and **nothing** has been done to them yet.
│   ├── project-name-raw.tsv
│   └── project-name-metadata.tsv
├── processed-data/ # data that has been modified from the raw in some way.
│   ├── project-name-quantile-normalized.tsv
└── util/ # A folder of utilities that never needs to be called or touched directly unless troubleshooting something
    ├── plotting-functions.R
    └── data-wrangling-functions.R
```

## Readings about organizational strategies for data science projects:

But you don't have to take my organizational strategy, there are lots of ideas out there.
You can read through some of these articles to think about what kind of organizational strategy might work for you and your team:   

- [Jenny Bryan's organizational strategy](https://www.stat.ubc.ca/~jenny/STAT545A/block19_codeFormattingOrganization.html) [@Bryan2021].
- [Jenny Bryan on Project-oriented workflows](https://www.tidyverse.org/blog/2017/12/workflow-vs-script/)[@Bryan2017].
- [Data Carpentry mini-course about organizing projects](https://datacarpentry.org/organization-genomics/) [@DataCarpentry2021].
- [Andrew Severin's strategy for organization](https://bioinformaticsworkbook.org/projectManagement/Intro_projectManagement.html#gsc.tab=0) [@Severin2021].
- [A BioStars thread where many individuals share their own organizational strategies](https://www.biostars.org/p/821/) [@Biostars2021].
- [Data Carpentry course chapter about getting organized](https://bioinformatics-core-shared-training.github.io/shell-genomics/07-organization/index.html) [@DataCarpentry2019].

## Exercise: Organize your project!

#### Get the example project files for this chapter

For this chapter, we will organize our example project files!

<details> <summary> About command line </summary>

If you decide to follow the command line prompts but are not familiar with it [read this article](https://towardsdatascience.com/a-quick-guide-to-using-command-line-terminal-96815b97b955).
Make sure you have [`wget`](https://www.gnu.org/software/wget/manual/wget.html) installed on your computer. You can check if you have it by running the following in your command line:


```bash
wget -V
```

```
## GNU Wget 1.20.3 built on linux-gnu.
## 
## -cares +digest -gpgme +https +ipv6 +iri +large-file -metalink +nls 
## +ntlm +opie +psl +ssl/openssl 
## 
## Wgetrc: 
##     /etc/wgetrc (system)
## Locale: 
##     /usr/share/locale 
## Compile: 
##     gcc -DHAVE_CONFIG_H -DSYSTEM_WGETRC="/etc/wgetrc" 
##     -DLOCALEDIR="/usr/share/locale" -I. -I../../src -I../lib 
##     -I../../lib -Wdate-time -D_FORTIFY_SOURCE=2 -DHAVE_LIBSSL -DNDEBUG 
##     -g -O2 -fdebug-prefix-map=/build/wget-OYIfr9/wget-1.20.3=. 
##     -fstack-protector-strong -Wformat -Werror=format-security 
##     -DNO_SSLv2 -D_FILE_OFFSET_BITS=64 -g -Wall 
## Link: 
##     gcc -DHAVE_LIBSSL -DNDEBUG -g -O2 
##     -fdebug-prefix-map=/build/wget-OYIfr9/wget-1.20.3=. 
##     -fstack-protector-strong -Wformat -Werror=format-security 
##     -DNO_SSLv2 -D_FILE_OFFSET_BITS=64 -g -Wall -Wl,-Bsymbolic-functions 
##     -Wl,-z,relro -Wl,-z,now -lpcre2-8 -luuid -lidn2 -lssl -lcrypto -lz 
##     -lpsl ftp-opie.o openssl.o http-ntlm.o ../lib/libgnu.a 
## 
## Copyright (C) 2015 Free Software Foundation, Inc.
## License GPLv3+: GNU GPL version 3 or later
## <http://www.gnu.org/licenses/gpl.html>.
## This is free software: you are free to change and redistribute it.
## There is NO WARRANTY, to the extent permitted by law.
## 
## Originally written by Hrvoje Niksic <hniksic@xemacs.org>.
## Please send bug reports and questions to <bug-wget@gnu.org>.
```

If this prints back something similar to this message above, then you already have `wget` and don't need to do anything! But if this command prints back `wget command not found` you will need to [ install wget](https://www.jcchouinard.com/wget/).

</details>

Now choose which version of the example you would like to work with and follow the instructions.  

<details> <summary>Python version of the exercise</summary>

To get the _Python project example files_, [click this link](https://raw.githubusercontent.com/jhudsl/Reproducibility_in_Cancer_Informatics/main/chapter-zips/python-heatmap-chapt-4.zip).
Or you can use these commands in command line.


```{.bash .fold-show}
mkdir -p chapter-zips
wget -O chapter-zips/python-heatmap-chapt-4.zip https://raw.githubusercontent.com/jhudsl/Reproducibility_in_Cancer_Informatics/main/chapter-zips/python-heatmap-chapt-4.zip
```

Now double click your chapter zip file to unzip. For Windows you may have to [follow these instructions](https://support.microsoft.com/en-us/windows/zip-and-unzip-files-f6dde0a7-0fec-8294-e1d3-703ed85e7ebc)).



Now let's take a look at the files inside these projects. These are purposely not organized because for this exercise we will organize them!


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

Organize these files! For now we will organize these files by hand, but in the upcoming chapters we will make it so our analysis places these items in the correct directories (and creates the directories if they do not exist!).

- Create a `plots`, `results`, and `data` folder and organize the files into their respective folders. Note that `aggregated_metadata.json` and `LICENSE.TXT` also belong in the `data folder.
- Delete any files that say "OLD". Keeping multiple versions of your scripts around is a recipe for mistakes and confusion. In the advanced course we will discuss how to use version control to help you track this more elegantly.

</details>

<details> <summary>R version of the exercise</summary>

To get the _R project examples files_ [click this link](https://raw.githubusercontent.com/jhudsl/Reproducibility_in_Cancer_Informatics/main/chapter-zips/r-heatmap-chapt-4.zip).
Or you can use these commands in command line.


```{.bash .fold-show}
mkdir -p chapter-zips
wget -O chapter-zips/r-heatmap-chapt-4.zip https://raw.githubusercontent.com/jhudsl/Reproducibility_in_Cancer_Informatics/main/chapter-zips/r-heatmap-chapt-4.zip
```

Now double click your chapter zip file to unzip. For Windows you may have to [follow these instructions](https://support.microsoft.com/en-us/windows/zip-and-unzip-files-f6dde0a7-0fec-8294-e1d3-703ed85e7ebc)).



Now let's take a look at the files inside these projects. These are purposely not organized because for this exercise we will organize them!


```
## aggregated_metadata.json
## dataset.zip
## heatmap_up_to_date_OLD.R
## heatmap_up_to_date.R
## LICENSE.TXT
## metadata_SRP070849.tsv
## SRP070849.tsv
```

Organize these files! For now we will organize these files by hand, but in the upcoming chapters we will make it so our analysis places these items in the correct directories (and creates the directories if they do not exist!).

- Create a `plots`, `results`, and `data` folder and organize the files into their respective folders. Note that `aggregated_metadata.json` and `LICENSE.TXT` also belong in the `data` folder.
- Delete any files that say "OLD". Keeping multiple versions of your scripts around is a recipe for mistakes and confusion. In the advanced course we will discuss how to use version control to help you track this more elegantly.

</details>

After your files are organized, you are ready to move on to the next chapter and start diving into the code!
