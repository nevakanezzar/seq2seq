export TSV_MAKER=${HOME}/stuff/project/dev/create_many_tsv.py
export MODEL_DIR=/cluster/project2/mr/skasewa/models/1024-s2s-fce-lang8-small
export FCE_ORIG_TSV=${HOME}/stuff/project/data/exp-data/train/fce/fce-public.train.original.tsv 
# export UNK_MAP=${HOME}/stuff/project/data/exp-data/train/wiki-sk/unk_mapping.tsv


export TEST_SOURCES=${HOME}/stuff/project/data/exp-data/s2s/test/evp/targets.txt

export MODEL=47000
export TEST_PREDS=${MODEL_DIR}/corruptions/evp-${MODEL}
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
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model $MODEL written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES  &


export MODEL=48000
export TEST_PREDS=${MODEL_DIR}/corruptions/evp-${MODEL}
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
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model $MODEL written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES  &


export MODEL=49000
export TEST_PREDS=${MODEL_DIR}/corruptions/evp-${MODEL}
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
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model $MODEL written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES  &


export MODEL=50000
export TEST_PREDS=${MODEL_DIR}/corruptions/evp-${MODEL}
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
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model $MODEL written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES  &


export MODEL=51000
export TEST_PREDS=${MODEL_DIR}/corruptions/evp-${MODEL}
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
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model $MODEL written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES  &


export MODEL=52000
export TEST_PREDS=${MODEL_DIR}/corruptions/evp-${MODEL}
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
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model $MODEL written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES  &


export MODEL=53000
export TEST_PREDS=${MODEL_DIR}/corruptions/evp-${MODEL}
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
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model $MODEL written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES  &


export MODEL=54000
export TEST_PREDS=${MODEL_DIR}/corruptions/evp-${MODEL}
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
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model $MODEL written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES  &


export MODEL=55000
export TEST_PREDS=${MODEL_DIR}/corruptions/evp-${MODEL}
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
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model $MODEL written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES  &


export MODEL=56000
export TEST_PREDS=${MODEL_DIR}/corruptions/evp-${MODEL}
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
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model $MODEL written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES  &


export MODEL=47001
export TEST_PREDS=${MODEL_DIR}/corruptions/evp-${MODEL}
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
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model $MODEL written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES  &


export MODEL=48001
export TEST_PREDS=${MODEL_DIR}/corruptions/evp-${MODEL}
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
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model $MODEL written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES  &


export MODEL=49001
export TEST_PREDS=${MODEL_DIR}/corruptions/evp-${MODEL}
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
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model $MODEL written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES  &


export MODEL=50010
export TEST_PREDS=${MODEL_DIR}/corruptions/evp-${MODEL}
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
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model $MODEL written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES  &


export MODEL=51001
export TEST_PREDS=${MODEL_DIR}/corruptions/evp-${MODEL}
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
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model $MODEL written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES  &


export MODEL=52001
export TEST_PREDS=${MODEL_DIR}/corruptions/evp-${MODEL}
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
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model $MODEL written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES  &


export MODEL=53001
export TEST_PREDS=${MODEL_DIR}/corruptions/evp-${MODEL}
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
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model $MODEL written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES  &


export MODEL=54001
export TEST_PREDS=${MODEL_DIR}/corruptions/evp-${MODEL}
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
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model $MODEL written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES  &


export MODEL=55001
export TEST_PREDS=${MODEL_DIR}/corruptions/evp-${MODEL}
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
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model $MODEL written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES  &


export MODEL=56001
export TEST_PREDS=${MODEL_DIR}/corruptions/evp-${MODEL}
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
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model $MODEL written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES  &


