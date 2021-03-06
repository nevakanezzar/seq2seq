export TSV_MAKER=${HOME}/stuff/project/dev/create_many_tsv.py
export MODEL_DIR=/cluster/project2/mr/skasewa/models/1layer-fce-minus1
export FCE_ORIG_TSV=${HOME}/stuff/project/data/exp-data/train/fce/fce-public.train.original.tsv 
# export UNK_MAP=${HOME}/stuff/project/data/exp-data/train/wiki-sk/unk_mapping.tsv

export TEST_SOURCES=${HOME}/stuff/project/data/exp-data/train/wiki-sk/targets.txt

export TEST_SOURCES=${HOME}/stuff/project/data/exp-data/train/lang8/targets.txt


export MODEL=80000
export TEST_PREDS=${MODEL_DIR}/corruptions/lang8c-1-1-$MODEL
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-$MODEL \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 1 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model $MODEL written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES && cat ${TEST_PREDS}.tsv $FCE_ORIG_TSV > ${TEST_PREDS}-fce.tsv &

export MODEL=80000
export TEST_PREDS=${MODEL_DIR}/corruptions/lang8c-1-2-$MODEL
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-$MODEL \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 1 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model $MODEL written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES && cat ${TEST_PREDS}.tsv $FCE_ORIG_TSV > ${TEST_PREDS}-fce.tsv &


export MODEL=80000
export TEST_PREDS=${MODEL_DIR}/corruptions/lang8c-$MODEL
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-$MODEL \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "argmax" \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model $MODEL written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES && cat ${TEST_PREDS}.tsv $FCE_ORIG_TSV > ${TEST_PREDS}-fce.tsv &
