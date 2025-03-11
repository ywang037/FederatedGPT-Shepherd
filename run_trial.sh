#!/bin/bash


python main.py \
    --global_model 'chavinlo/alpaca-native'\
    --data_path  "./data" \
    --output_dir  './lora-shepherd-7b/'\
    --num_communication_rounds 10 \
    --num_clients  10 \
    --client_selection_frac 0.1 \
    --local_num_epochs  2 \
    --local_batch_size  64 \
    --local_micro_batch_size 32 \
    --local_learning_rate 0.0003 \
    --lora_r 8 \
    --lora_target_modules='[q_proj,k_proj,v_proj,o_proj]' \
    --train_on_inputs \
    --group_by_length