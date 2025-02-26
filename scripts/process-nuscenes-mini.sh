#!/bin/bash
# 
# --- INSTRUCTIONS ---
# Run within Pointcept/ directory.
# i.e. ./scripts/process-nuscenes-mini.sh

NUSCENES_DIR="../data"
PROCESSED_NUSCENES_DIR="../data"
MAX_SWEEPS="10"
python pointcept/datasets/preprocessing/nuscenes/preprocess_nuscenes_info.py \
    --dataset_root $NUSCENES_DIR \
    --output_root $PROCESSED_NUSCENES_DIR \
    --max_sweeps $MAX_SWEEPS \
    --mini
