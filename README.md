
# Reproducibility in Cancer Informatics

[![Render Bookdown and Coursera](https://github.com/jhudsl/DaSL_Course_Template_Bookdown/actions/workflows/render-bookdown.yml/badge.svg)](https://github.com/jhudsl/DaSL_Course_Template_Bookdown/actions/workflows/render-bookdown.yml)

This course was created from [this GitHub template](https://github.com/jhudsl/DaSL_Course_Template_Bookdown).

You can see the rendered course material here: https://jhudatascience.org/Reproducibility_in_Cancer_Informatics

If you would like to contribute to this course material, take a look at the [getting started GitHub wiki pages](https://github.com/jhudsl/DaSL_Course_Template_Bookdown/wiki).

## About this course

This course introduces the concepts of reproducibility and replicability in the context of cancer informatics.
It uses hands-on exercises to demonstrate in practical terms how to increase the reproducibility of data analyses.
The course also introduces tools relevant to reproducibility including analysis notebooks, Docker images, git and GitHub.

## Learning Objectives

This course will teach learners to:  

- Understand the fundamental concepts of reproducibility vs replicability
- Write a basic analysis that could be passed to another person/computer and be re-ran to obtain the same output
- Write analysis notebook that adheres to best practices for reproducibility and readability
- Create a reproducible project on GitHub that could be re-run by someone else
- Pull and use an existing Docker image for running an analysis
- Obtain confidence to learn and apply additional reproducibility tools to an analysis

## Encountering problems?

If you are encountering any problems with this course, please file a GitHub issue or contact us at {Some email or web address with a contact form}.

_All materials in this course are licensed [CC-BY](https://tldrlegal.com/license/creative-commons-attribution-(cc)) and can be repurposed freely with attribution._


## About the chapter example files

Each chapter has its own zip file to be downloaded as a learner is going through a particular chapter.

There are the Python and R versions.
For example, for chapter 4 there are:
```
python-examples/python-heatmap-chapt-4
r-examples/r-heatmap-chapt-4
```
These files are zipped up by a GitHub action so they are ready for easy downloading by the learner.
The user will download these according to the chapter and follow along with the chapter to make them more reproducible and eventually hopefully have something that looks like the "final" versions.

This is the URL pattern they can find the chapter files at:

_For Python_:
```
https://github.com/jhudsl/Reproducibility-Examples/raw/main/chapter-zips/python-heatmap-final.zip
```
_For R_:
```
https://github.com/jhudsl/Reproducibility-Examples/raw/main/chapter-zips/r-heatmap-final.zip
```

## For development purposes:

There's also two Dockerfiles: one for the R example and one for the Python example. These Dockerfiles are symlinked to the main R-examples and Python-examples directories so that they can be run in the main directory with

### Running the R docker image:

With your current directory being R-examples you can do:
```
docker build -f docker/Dockerfile . -t jhudsl/reproducible-r
docker run -it -v $PWD:/home/rstudio -e PASSWORD=password -p 8787:8787 jhudsl/reproducible-r
```
Then navigate to localhost:8787

### Running the Python docker image:

With your current directory being Python-examples you can do:
```
docker build -f docker/Dockerfile . -t jhudsl/reproducible-python
docker run --rm -v $(pwd):/home/jovyan/work -e JUPYTER_ENABLE_LAB=yes -p 8888:8888 jhudsl/reproducible-python
```
Then navigate to the port that the output tells you.
