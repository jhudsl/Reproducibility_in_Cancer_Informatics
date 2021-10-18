# Heatmap Analysis - R


## How to run the analysis within the docker image

```
docker run \
--mount type=bind,target=/home/jovyan/work,source=$PWD \
  jhudsl/reproducible-python \
  jupyter nbconvert --execute work/make_heatmap.ipynb --to notebook --inplace
```

## About the scripts

### 00-download-data.py

### 01-make-heatmap.Rmd

## Input


## Output

`plots/`
`results/`
