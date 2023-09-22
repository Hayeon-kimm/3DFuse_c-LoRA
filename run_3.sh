PROMPT="a DSLR photo of astronaut wearing blue dress"
INITIAL="astronaut"
EXP_DIR="./results"
RANDOM_SEED=0
SEMANTIC_MODEL="Karlo" # "SD" or "Karlo"

CUDA_VISIBLE_DEVICES=3 python run_3DFuse.py \
--sd.prompt "${PROMPT}" \
--sd.dir "${EXP_DIR}/${INITIAL}/lora/final_lora.safetensors" \
--exp_dir $EXP_DIR \
--initial $INITIAL \
--random_seed $RANDOM_SEED \
--semantic_model $SEMANTIC_MODEL \
--bg_preprocess True \
--ti_step 500 \
--pt_step 500 \
