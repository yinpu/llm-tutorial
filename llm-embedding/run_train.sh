torchrun --nnodes 1 \
    --nproc-per-node 1 \
    train.py \
    --output_dir saved/Qwen-Emb \
    --model_name_or_path Qwen/Qwen2.5-0.5B \
    --data_dir data \
    --cache_dir_data cache_data \
    --learning_rate 2e-5 \
    --fp16 true \
    --num_train_epochs 5 \
    --per_device_train_batch_size 2 \
    --gradient_accumulation_steps 8 \
    --query_max_len 64 \
    --passage_max_len 512 \
    --save_strategy epoch \
    --save_total_limit 3 \
    --temperature 0.05 \
    --logging_steps 5 \
    --remove_unused_columns False \
    --use_adapter True \
    --deepspeed ds_z2_config.json


# torchrun --nnodes 1 \
#     --nproc-per-node 1 \
#     train.py \
#     --output_dir saved/Qwen-Emb \
#     --model_name_or_path Qwen/Qwen2.5-0.5B \
#     --data_dir data \
#     --cache_dir_data cache_data \
#     --learning_rate 2e-5 \
#     --fp16 true \
#     --num_train_epochs 5 \
#     --per_device_train_batch_size 2 \
#     --gradient_accumulation_steps 8 \
#     --query_max_len 64 \
#     --passage_max_len 512 \
#     --save_strategy epoch \
#     --save_total_limit 3 \
#     --temperature 0.05 \
#     --logging_steps 5 \
#     --remove_unused_columns False \
#     --deepspeed ds_z2_config.json