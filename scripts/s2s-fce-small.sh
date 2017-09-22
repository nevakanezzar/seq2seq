export VOCAB_SOURCE=${HOME}/stuff/project/data/exp-data/s2s/train/fce-lang8/vocab.combined.40000.txt
export VOCAB_TARGET=${HOME}/stuff/project/data/exp-data/s2s/train/fce-lang8/vocab.combined.40000.txt
export TRAIN_SOURCES=${HOME}/stuff/project/data/exp-data/s2s/train/fce-lang8/targets.txt
export TRAIN_TARGETS=${HOME}/stuff/project/data/exp-data/s2s/train/fce-lang8/sources.txt
export DEV_SOURCES=${HOME}/stuff/project/data/exp-data/dev/fce/targets.txt
export DEV_TARGETS=${HOME}/stuff/project/data/exp-data/dev/fce/sources.txt

export DEV_TARGETS_REF=${HOME}/stuff/project/data/exp-data/dev/fce/sources.txt
export TRAIN_STEPS=300000

export MODEL_DIR=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8
mkdir -p $MODEL_DIR

python3 -m bin.train \
  --config_paths="./example_configs/s2s-1layer-model.yml,
                  ./example_configs/s2s-fce-lang8-train.yml,
                  ./example_configs/s2s-fce-lang8-metrics.yml"\
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
  --batch_size 64 \
  --save_checkpoints_steps 5000 \
  --keep_checkpoint_max 0 \
  --keep_checkpoint_every_n_hours 2 \
  --train_steps $TRAIN_STEPS \
  --output_dir $MODEL_DIR

