export TSV_MAKER=${HOME}/stuff/project/dev/create_many_tsv.py
export MODEL_DIR=/cluster/project2/mr/skasewa/models/s2s-fce
export TEST_SOURCES=${HOME}/stuff/project/data/exp-data/train/fce/targets.txt
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcec-104-05-1

python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/final/model.ckpt-104000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 219000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 

export TEST_PREDS=/cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcec-104-05-2

python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/final/model.ckpt-104000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 219000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 

export TEST_PREDS=/cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcec-104-05-3

python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/final/model.ckpt-104000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 219000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 

export TEST_PREDS=/cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcec-104-05-4

python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/final/model.ckpt-104000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 219000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 

export TEST_PREDS=/cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcec-104-05-5

python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/final/model.ckpt-104000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 219000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 

