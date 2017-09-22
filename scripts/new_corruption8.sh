export VOCAB_SOURCE=${HOME}/stuff/project/data/exp-data/train/wiki-roman/clean.wiked.targets.vocab.txt
export VOCAB_TARGET=${HOME}/stuff/project/data/exp-data/train/wiki-roman/clean.wiked.targets.vocab.txt
export TRAIN_SOURCES=${HOME}/stuff/project/data/exp-data/train/wiki-roman/targets.txt
export TRAIN_TARGETS=${HOME}/stuff/project/data/exp-data/train/wiki-roman/sources.txt
export DEV_SOURCES=${HOME}/stuff/project/data/exp-data/dev/fce/targets.txt
export DEV_TARGETS=${HOME}/stuff/project/data/exp-data/dev/fce/sources.txt

export DEV_TARGETS_REF=${HOME}/stuff/project/data/exp-data/dev/fce/sources.txt
export TRAIN_STEPS=300000

export MODEL_DIR=/cluster/project2/mr/skasewa/models/new_corruption8
mkdir -p $MODEL_DIR

python3 -m bin.train \
  --config_paths="./example_configs/new_corruption_model8.yml,
                  ./example_configs/new_corruption_train.yml,
                  ./example_configs/new_corruption_metrics.yml"\
  --model_params "
      vocab_source: $VOCAB_SOURCE
      vocab_target: $VOCAB_TARGET" \
  --input_pipeline_train "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TRAIN_SOURCES
      target_files:
        - $TRAIN_TARGETS " \
  --input_pipeline_dev "
    class: ParallelTextInputPipeline
    params:
       source_files:
        - $DEV_SOURCES
       target_files:
        - $DEV_TARGETS" \
  --batch_size 32 \
  --save_checkpoints_steps 5000 \
  --keep_checkpoint_max 0 \
  --keep_checkpoint_every_n_hours 2 \
  --train_steps $TRAIN_STEPS \
  --output_dir $MODEL_DIR

export TEST_SOURCES=${HOME}/stuff/project/dev/evp/evpcorpus.txt  
export PRED_DIR=${HOME}/stuff/project/dev/evp
mkdir -p ${PRED_DIR}

python3 -m bin.infer \
  --tasks "
    - class: DecodeText 
      params:
        unk_replace: True"\
  --model_dir $MODEL_DIR \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  ${PRED_DIR}/evp_corruptions8.txt
echo "Predictions written!"
