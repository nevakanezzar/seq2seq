export TSV_MAKER=${HOME}/stuff/project/dev/create_many_tsv.py
export MODEL_DIR=/cluster/project2/mr/skasewa/models/1layer-s2s-fce
export TEST_SOURCES=${HOME}/stuff/project/data/exp-data/train/fce/targets.txt
 
export MODEL=46002
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-s2s-fce/corruptions/fcec-$MODEL

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
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &


export MODEL=47002
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-s2s-fce/corruptions/fcec-$MODEL

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
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &


export MODEL=48002
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-s2s-fce/corruptions/fcec-$MODEL

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
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &


export MODEL=49002
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-s2s-fce/corruptions/fcec-$MODEL

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
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &


export MODEL=50002
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-s2s-fce/corruptions/fcec-$MODEL

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
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &

export MODEL=51002
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-s2s-fce/corruptions/fcec-$MODEL

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
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &


export MODEL=52002
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-s2s-fce/corruptions/fcec-$MODEL

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
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &

export MODEL=53002
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-s2s-fce/corruptions/fcec-$MODEL

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
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &

export MODEL=54002
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-s2s-fce/corruptions/fcec-$MODEL

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
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &

export MODEL=55002
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-s2s-fce/corruptions/fcec-$MODEL

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
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &


export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-s2s-fce/corruptions/fcec-50-05-1

python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-50002 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 50000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-s2s-fce/corruptions/fcec-50-05-2

python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-50002 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 50000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-s2s-fce/corruptions/fcec-50-05-3

python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-50002 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 50000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-s2s-fce/corruptions/fcec-50-05-4

python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-50002 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 50000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-s2s-fce/corruptions/fcec-50-05-5

python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-50002 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 50000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
