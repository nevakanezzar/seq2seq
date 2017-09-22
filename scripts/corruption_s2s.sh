export VOCAB_SOURCE=${HOME}/stuff/project/data/parsed_fce/train/vocab.targets.txt
export VOCAB_TARGET=${HOME}/stuff/project/data/parsed_fce/train/vocab.sources.txt
export TRAIN_SOURCES=${HOME}/stuff/project/data/parsed_fce/train/targets.txt
export TRAIN_TARGETS=${HOME}/stuff/project/data/parsed_fce/train/sources.txt
export DEV_SOURCES=${HOME}/stuff/project/data/parsed_fce/dev/targets.txt
export DEV_TARGETS=${HOME}/stuff/project/data/parsed_fce/dev/sources.txt

export DEV_TARGETS_REF=${HOME}/stuff/project/data/parsed_fce/dev/sources.txt
export TRAIN_STEPS=100000

export MODEL_DIR=${TMPDIR:-/tmp}/corruption_s2s_final
mkdir -p $MODEL_DIR

python3 -m bin.train \
  --config_paths="./example_configs/nmt_medium.yml,
                  ./example_configs/train_seq2seq.yml,
                  ./example_configs/text_metrics_bpe.yml"\
  --model_params "
      vocab_source: $VOCAB_SOURCE
      vocab_target: $VOCAB_TARGET" \
  --input_pipeline_train "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TRAIN_SOURCES
      target_files:
        - $TRAIN_TARGETS" \
  --input_pipeline_dev "
    class: ParallelTextInputPipeline
    params:
       source_files:
        - $DEV_SOURCES
       target_files:
        - $DEV_TARGETS" \
  --batch_size 128 \
  --train_steps $TRAIN_STEPS \
  --output_dir $MODEL_DIR

export TEST_SOURCES=${HOME}/stuff/project/data/parsed_fce/test/targets.txt  
export PRED_DIR=${HOME}/stuff/project/data/parsed_fce/test/corruption_s2s_pred
mkdir -p ${PRED_DIR}

python3 -m bin.infer \
  --tasks "
    - class: DecodeText" \
  --model_dir $MODEL_DIR \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  ${PRED_DIR}/predictions.txt
echo "Predictions written!"
