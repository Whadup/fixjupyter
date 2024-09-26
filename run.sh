#!/usr/bin/bash

ls -l /anaconda/envs

rm -rf /anaconda/envs/*

# Check if the folder exists
if [ -d "/deleteme" ]; then
  # Delete everything in the folder with force
  rm -rf "/deleteme/*"
  echo "Deleted contents of /deleteme"
else
  echo "/deleteme does not exist"
fi


if [ -d "/copyme" ]; then
  cp -r "/copyme" "/copyhere/"
  echo "Copied /copyme to /copyhere"
else
  echo "/copyme does not exist"
fi

/opt/conda/condabin/conda create -y -q --prefix /anaconda/envs/jupyter_env --channel=conda-forge  python=3.8 jupyter_server
/anaconda/envs/jupyter_env/bin/pip install \
    azureml-core==1.56.0 \
    azureml-telemetry==1.56.0 \
    azureml-widgets==1.56.0 \
    azure-storage-blob==12.20.0

ls -l /anaconda/envs

echo "DONE"