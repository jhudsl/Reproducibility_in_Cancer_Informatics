# {Title of analysis}

{What is the overall goal of this analysis?}

_This example analysis will:_  

- {In brief, describe the steps of this analysis}

## Requirements

{What do I need installed to run this analysis? If there's a package manager or Docker image, how do I get that?}

## How to run the analysis/Usage

To re-run this analysis here are the exact commands you'd need to run in {R/Bash/Python} with the top of this repository being your current directory.

1. {Step one}
```
SOME COMMAND THAT I CAN COPY AND PASTE TO RUN THIS
```

2. {Step two}

```
THE NEXT COMMAND I WOULD NEED TO RUN
```

## About the scripts

{What are each of these scripts about? What does each do?}

- `make_heatmap.{Rmd/ipynb}` - This Rmd notebook takes the data that is downloaded from refine.bio and creates a heatmap that is saved to `plots/aml_heatmap.png`.

### Input

{What files are needed for input to run this analysis. If the data are not included in the repository, how to obtain the files in order to run this analysis. Make sure to make this very clear in the Usage section as well.}

The [data used by this analysis](dataset can be downloaded from this page on refine.bio](https://www.refine.bio/experiments/SRP070849) is downloaded [processed and quantile normalized](http://docs.refine.bio/en/latest/main_text.html#refine-bio-processed-refinebio-processedibadge) from refine.bio using their API.
It is RNA-seq data from 19 acute myeloid leukemia (AML) mice models.

### Output

{What are the outputs from this analysis? Where do I find them? How do I interpret them?}

Two directories are created by this analysis and hold the output:  

`plots/` - contains the heatmap png: `aml_heatmap.png`
`results/` - contains the TSV file list of most variant genes: `top_90_var_genes.tsv`

### {Any additional tools included in this repository}

{Are there GitHub actions? Please describe.}
{Is there a Docker image? Please describe how to use it.}
{Should contact info be included?}
