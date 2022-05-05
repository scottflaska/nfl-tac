# NFL TAC Demo | 2022
## Introduction to Data Version Control (DVC)

This repo provides an example for how you can use DVC to manage machine learning projects. The repo contains two R scripts (`prepare_data.R` and `train_model.R`) that are used in conjunction to train a decision tree model 

### Demo
1. Review R scripts for each stage of the pipeline: `prepare_data.R` and `train_model.R`
1. Review the pipeline file (`dvc.yaml`) which defines the stages in the pipeline
1. Use `dvc repro` to reproduce the pipeline and update the data/model outputs from each stage
1. Use `dvc push` to push the data to remote storage must be setup with [`dvc remote add`](https://dvc.org/doc/command-reference/remote/add)
1. Add feature 9 to the model
    a. Create new branch in Git (`add-feature-09`). 
    a. Add `f_09` to the training fold in the `prepare_data.R` script
    a. Use 

















Data: [Kaggle Tabular Playground Series - May 2022](https://www.kaggle.com/competitions/tabular-playground-series-may-2022/overview)

### Docker

`docker-compose -f compose.yml up --build -d`

`docker-compose -f compose.yml down`
