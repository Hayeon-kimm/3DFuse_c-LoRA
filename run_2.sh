PROMPT="a photo of cute panda"
INITIAL="bear"
SAVE_NAME="panda"
EXP_DIR="./origin_result"
RANDOM_SEED=0
SEMANTIC_MODEL="SD" # "SD" or "Karlo"

CUDA_VISIBLE_DEVICES=0 python run_3DFuse_origin.py \
--sd.prompt "${PROMPT}" \
--sd.dir "${EXP_DIR}/${SAVE_NAME}/lora/final_lora.safetensors" \
--exp_dir $EXP_DIR \
--initial $INITIAL \
--save_name $SAVE_NAME \
--random_seed $RANDOM_SEED \
--semantic_model $SEMANTIC_MODEL \
--bg_preprocess True \
--ti_step 500 \
--pt_step 500 \