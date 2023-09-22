PROMPT="a photo of cute moon bear"
INITIAL="bear"
SAVE_NAME="moon_bear2"
EXP_DIR="./results2"
RANDOM_SEED=0
SEMANTIC_MODEL="SD" # "SD" or "Karlo"

CUDA_VISIBLE_DEVICES=2 python run_3DFuse.py \
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
