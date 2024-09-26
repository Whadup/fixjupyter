#!/usr/bin/bash
/opt/conda/condabin/conda create -y -q --prefix /anaconda/envs --channel=conda-forge --name jupyter_env python=3.8 jupyter_server
/anaconda/envs/jupyter_env/bin/pip install \
    azureml-core==1.56.0 \
    azureml-telemetry==1.56.0 \
    azureml-widgets==1.56.0 \
    azure-storage-blob==12.20.0