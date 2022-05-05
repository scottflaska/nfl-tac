# NFL TAC Demo | 2022
## Introduction to Data Version Control (DVC)

This repo provides an example for how you can use DVC to manage machine learning projects.

### Demo
1. Review R scripts for each stage of the pipeline: `prepare_data.R` and `train_model.R`
1. Review the pipeline file ([`dvc.yaml`](https://dvc.org/doc/user-guide/project-structure/pipelines-files)) which defines the stages in the pipeline
1. Use [`dvc repro`](https://dvc.org/doc/command-reference/repro) to reproduce the pipeline and update the data/model outputs from each stage
1. Use [`dvc push`](https://dvc.org/doc/command-reference/push) to push the data to remote storage (must be setup with [`dvc remote add`](https://dvc.org/doc/command-reference/remote/add))
1. Add Feature 9 to the model
    a. Create and checkout a new branch in Git (`add-feature-09`). 
    a. Add the `f_09` column to the training fold in the `prepare_data.R` script
    a. Use [`dvc repro`](https://dvc.org/doc/command-reference/repro) to reproduce the pipeline
    a. Use [`dvc metrics diff`](https://dvc.org/doc/command-reference/metrics/diff) to see the change in accuracy 
    a. Use [`dvc push`](https://dvc.org/doc/command-reference/push) to push the data/model updates for the new branch to remote storage
    a. Switch back to the `main` branch
    a. Run [`dvc pull`](https://dvc.org/doc/command-reference/pull) to download the tracked data/model files for the `main` branch

Data: [Kaggle Tabular Playground Series - May 2022](https://www.kaggle.com/competitions/tabular-playground-series-may-2022/overview)