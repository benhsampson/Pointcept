#!/bin/bash
CUDA_HOME="$CONDA_PREFIX"
./scripts/test.sh -d nuscenes -c semseg-pt-v3m1-0-base -n semseg-pt-v3m1-0-base.py