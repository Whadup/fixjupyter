#!/usr/bin/bash
rm -rf /anaconda/envs/*
/opt/conda/condabin/conda create -y -q --prefix /anaconda/envs/jupyter_env --channel=conda-forge  python=3.8 jupyter_server
/anaconda/envs/jupyter_env/bin/pip install \
    azureml-core==1.56.0 \
    azureml-telemetry==1.56.0 \
    azureml-widgets==1.56.0 \
    azure-storage-blob==12.20.0