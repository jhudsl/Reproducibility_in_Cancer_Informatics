---
title: "Package versions"
---



# Why package versions matter

## Learning Objectives

<img src="resources/images/06-package-management_files/figure-html//1LMurysUhCjZb7DVF6KS9QmJ5NBjwWVjRn40MS9f2noE_gf62875ddf7_0_394.png" title="This chapter will demonstrate how to: Understand that versions of software influence analysis outcomes. Find what package versions you are using. Print session info in all of your analyses so it is more clear what packages and versions you are using." alt="This chapter will demonstrate how to: Understand that versions of software influence analysis outcomes. Find what package versions you are using. Print session info in all of your analyses so it is more clear what packages and versions you are using." width="100%" />

As we discussed previously, sometimes two different researchers can run the same code and same data and get different results!

<img src="resources/images/06-package-management_files/figure-html//1LMurysUhCjZb7DVF6KS9QmJ5NBjwWVjRn40MS9f2noE_gf1accd298e_0_673.png" title="Ruby the researcher and Avi the associate are both very confused and slightly horrified that they both ran the same code and data but received different results. " alt="Ruby the researcher and Avi the associate are both very confused and slightly horrified that they both ran the same code and data but received different results. " width="100%" />

What Ruby and Avi may not realize, is that although they may have used the same code and data, the software packages that they have on each of their computers might be very different. Even if they have the same software packages, they likely don't have the same versions and versions can influence results! Different computing environments are not only a headache to detangle, they also can influence the reproducibility of your results [ @BeaulieuJones2017].

<img src="resources/images/06-package-management_files/figure-html//1LMurysUhCjZb7DVF6KS9QmJ5NBjwWVjRn40MS9f2noE_gf62875ddf7_0_404.png" title="Ruby has a particular computing environment she has developed her code from. This computing environment is represented as a bubble above her computer with various hexagons with version numbers as well as Rstudio and R installed on her computer. Her code ran just fine on her particular computing environment. Avi attempted to run Ruby’s code on his very different local computing environment and got an error. His computer runs the same code but came up with a different result!" alt="Ruby has a particular computing environment she has developed her code from. This computing environment is represented as a bubble above her computer with various hexagons with version numbers as well as Rstudio and R installed on her computer. Her code ran just fine on her particular computing environment. Avi attempted to run Ruby’s code on his very different local computing environment and got an error. His computer runs the same code but came up with a different result!" width="100%" />

There are multiple ways to deal with variations in computing environments so that your analyses will be reproducible and we will discuss a few different strategies for tackling this problem in this course and its follow up course. But for now, we will start with the least intensive to implement: session info.

There are two strategies for dealing with software versions that we will use in our exercises:

1. List the **session info** - The easiest (though not most comprehensive) method for handling differences in software versions is to have your code list details about your computing environment.

2. Use **package managers** to handle your package for you in a way that you can share them with others. For R and Python versions of the exercises, we will be using different managers, but the foundational strategy will be the same: include a file that someone else could replicate your package set up from.

For both exercises, we will download an environment file we've set up for you, then we will practice adding a new package to the environments we've provided, and add them to your new repository along with the rest of your example project files.

- For Python, we'll use `conda` for package management and store this information in a `environment.yml` file.
- For R, we'll use `renv` for package management and store this information in a `renv.lock` file.

## Get the exercise project files (or continue with the files you used in the previous chapter)

<details> <summary>How to get the _Python project example files_</summary>
To get the _Python project example files_, [click this link](https://raw.githubusercontent.com/jhudsl/Reproducibility_in_Cancer_Informatics/main/chapter-zips/python-heatmap-chapt-6.zip).



Now double click your chapter zip file to unzip. For Windows you may have to [follow these instructions](https://support.microsoft.com/en-us/windows/zip-and-unzip-files-f6dde0a7-0fec-8294-e1d3-703ed85e7ebc)).


</details>

<details> <summary>How to get the _R project example files_</summary>
To get the _R project example files_, [click this link](https://raw.githubusercontent.com/jhudsl/Reproducibility_in_Cancer_Informatics/main/chapter-zips/r-heatmap-chapt-6.zip).



Now double click your chapter zip file to unzip. For Windows you may have to [follow these instructions](https://support.microsoft.com/en-us/windows/zip-and-unzip-files-f6dde0a7-0fec-8294-e1d3-703ed85e7ebc)).


</details>

## Exercise 1: Print out session info

<details> <summary>Python version of the exercise</summary>

In your scientific notebook, you'll need to add two items.
1. Add the `import session_info` to a code chunk at the beginning of your notebook.
2. Add `session_info.show()` to a new code chunk at the very end of your notebook.
3. Save your notebook and commit it to GitHub.

</details>

<details> <summary>R version of the exercise</summary>

1. In your Rmd file, add a chunk in the very end that looks like this:
`````

```r
sessionInfo()
```

```
## R version 4.0.2 (2020-06-22)
## Platform: x86_64-pc-linux-gnu (64-bit)
## Running under: Ubuntu 20.04.2 LTS
## 
## Matrix products: default
## BLAS/LAPACK: /usr/lib/x86_64-linux-gnu/openblas-pthread/libopenblasp-r0.3.8.so
## 
## locale:
##  [1] LC_CTYPE=en_US.UTF-8       LC_NUMERIC=C              
##  [3] LC_TIME=en_US.UTF-8        LC_COLLATE=en_US.UTF-8    
##  [5] LC_MONETARY=en_US.UTF-8    LC_MESSAGES=C             
##  [7] LC_PAPER=en_US.UTF-8       LC_NAME=C                 
##  [9] LC_ADDRESS=C               LC_TELEPHONE=C            
## [11] LC_MEASUREMENT=en_US.UTF-8 LC_IDENTIFICATION=C       
## 
## attached base packages:
## [1] stats     graphics  grDevices utils     datasets  methods   base     
## 
## loaded via a namespace (and not attached):
##  [1] knitr_1.33      magrittr_1.5    hms_0.5.3       R6_2.4.1       
##  [5] rlang_0.4.10    highr_0.8       stringr_1.4.0   httr_1.4.2     
##  [9] tools_4.0.2     xfun_0.26       jquerylib_0.1.1 htmltools_0.5.0
## [13] ellipsis_0.3.1  yaml_2.2.1      leanbuild_0.1.2 digest_0.6.25  
## [17] tibble_3.0.3    lifecycle_1.0.0 crayon_1.3.4    bookdown_0.24  
## [21] readr_1.4.0     vctrs_0.3.4     fs_1.5.0        curl_4.3       
## [25] evaluate_0.14   rmarkdown_2.10  stringi_1.5.3   compiler_4.0.2 
## [29] pillar_1.4.6    pkgconfig_2.0.3
```
`````
2. Now you'll want to refresh everything before you save your notebook. In the menu, where it says "Run" click the arrow and choose "Restart R Run All Chunks" to refresh everything.
3. Save your notebook and commit it to GitHub.

</details>

## Exercise 2: Package management

<details> <summary>Python version of the exercise</summary>

1. Download this [starter conda environment.yml file](https://raw.githubusercontent.com/jhudsl/reproducible-python-example/main/environment.yml) by clicking on the link and place it with your example project files directory.


```bash
wget https://raw.githubusercontent.com/jhudsl/reproducible-python-example/main/environment.yml
```

```
## --2021-10-28 16:26:33--  https://raw.githubusercontent.com/jhudsl/reproducible-python-example/main/environment.yml
## Resolving raw.githubusercontent.com (raw.githubusercontent.com)... 185.199.110.133, 185.199.111.133, 185.199.108.133, ...
## Connecting to raw.githubusercontent.com (raw.githubusercontent.com)|185.199.110.133|:443... connected.
## HTTP request sent, awaiting response... 200 OK
## Length: 6246 (6.1K) [text/plain]
## Saving to: ‘environment.yml.3’
## 
##      0K ......                                                100% 27.2M=0s
## 
## 2021-10-28 16:26:33 (27.2 MB/s) - ‘environment.yml.3’ saved [6246/6246]
```

2. Navigate to your example project files directory using [command line](https://towardsdatascience.com/a-quick-guide-to-using-command-line-terminal-96815b97b955).

3. Create your conda environment by using this file in the command.

```
conda env create --file environment.yml
```

4. Activate your conda environment using this command.

```
conda activate reproducible-python
```

5. Now start up JupyterLab again using this command:

```
jupyter lab
```

6. Follow [these instructions to add the environment.yml file to the GitHub repository you created in the previous chapter](https://docs.github.com/en/repositories/working-with-files/managing-files/adding-a-file-to-a-repository#adding-a-file-to-a-repository-on-github). Later we will practice and discuss how to more fully utilize the features of GitHub but for now, just drag and drop it as the instructions linked describe.

### More resources on how to use conda
- [Install Jupyter using your own environment (Mac specific)](https://medium.com/swlh/installing-jupyter-notebook-and-using-your-own-environment-on-mac-fa41efd4639d)
- [Definitive guide to using conda](https://whiteboxml.com/blog/the-definitive-guide-to-python-virtual-environments-with-conda)

</details>

<details> <summary>R version of the exercise</summary>

1. Go to RStudio and the Console pane:

2. Install `renv` using:


```
## Installing package into '/usr/local/lib/R/site-library'
## (as 'lib' is unspecified)
```

3. Create your renv snapshot following the `renv` workflow process:

> 1. Call renv::init() to initialize a new project-local environment with a private R library,

> 2. Work in the project as normal, installing and removing new R packages as they are needed in the project,

> 3. Call renv::snapshot() to save the state of the project library to the lockfile (called renv.lock),

> 4. Continue working on your project, installing and updating R packages as needed.

> 5. Call renv::snapshot() again to save the state of your project library if your attempts to update R packages were successful, or call renv::restore() to revert to the previous state as encoded in the lockfile if your attempts to update packages introduced some new problems.

4. You should see an `renv.lock` file is now created! You will want to always include this file with your project files. This means we will want to add it to our GitHub!

5. Follow [these instructions to add your renv.lock file to the GitHub repository you created in the previous chapter](https://docs.github.com/en/repositories/working-with-files/managing-files/adding-a-file-to-a-repository#adding-a-file-to-a-repository-on-github). Later we will practice and discuss how to more fully utilize the features of GitHub but for now, just drag and drop it as the instructions linked describe.

</details>

After you've added your computing environment files to your GitHub, you're ready to continue using them with your IDE to actually work on the code in your notebook!
