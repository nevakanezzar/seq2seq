export TSV_MAKER=${HOME}/stuff/project/dev/create_many_tsv.py
export MODEL_DIR=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8
export TEST_SOURCES=${HOME}/stuff/project/data/exp-data/train/fce/targets.txt
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-180000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-180000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 180000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-179000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-179000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 179000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-178000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-178000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 178000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-177000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-177000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 177000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-176000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-176000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 176000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-175000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-175000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 175000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-174000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-174000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 174000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-173000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-173000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 173000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-172000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-172000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 172000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-171000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-171000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 171000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-170000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-170000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 170000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-169000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-169000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 169000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-168000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-168000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 168000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-167000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-167000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 167000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-166000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-166000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 166000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-165000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-165000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 165000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-164000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-164000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 164000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-163000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-163000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 163000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-162000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-162000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 162000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-161000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-161000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 161000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-160000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-160000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 160000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-159000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-159000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 159000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-158000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-158000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 158000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-157000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-157000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 157000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-156000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-156000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 156000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-155000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-155000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 155000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-154000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-154000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 154000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-153000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-153000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 153000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-152000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-152000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 152000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-151000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-151000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 151000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-150000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-150000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 150000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-149000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-149000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 149000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-148000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-148000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 148000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-147000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-147000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 147000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-146000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-146000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 146000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-145000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-145000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 145000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-144000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-144000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 144000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-143000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-143000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 143000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-142000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-142000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 142000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-141000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-141000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 141000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-140000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-140000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 140000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-139000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-139000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 139000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-138000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-138000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 138000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-137000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-137000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 137000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-136000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-136000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 136000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-135000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-135000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 135000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-134000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-134000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 134000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-133000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-133000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 133000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-132000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-132000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 132000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-131000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-131000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 131000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-130000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-130000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 130000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-129000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-129000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 129000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-128000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-128000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 128000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-127000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-127000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 127000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-126000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-126000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 126000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-125000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-125000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 125000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-124000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-124000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 124000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-123000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-123000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 123000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-122000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-122000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 122000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-121000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-121000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 121000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-120000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-120000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 120000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-119000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-119000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 119000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-118000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-118000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 118000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-117000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-117000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 117000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-116000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-116000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 116000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-115000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-115000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 115000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-114000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-114000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 114000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-113000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-113000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 113000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-112000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-112000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 112000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-111000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-111000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 111000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-110000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-110000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 110000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-109000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-109000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 109000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-108000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-108000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 108000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-107000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-107000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 107000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-106000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-106000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 106000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-105000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-105000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 105000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-104000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-104000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 104000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-103000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-103000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 103000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-102000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-102000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 102000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-101000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-101000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 101000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-100000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-100000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 100000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-99000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-99000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 99000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-98000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-98000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 98000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-97000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-97000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 97000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-96000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-96000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 96000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-95000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-95000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 95000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-94000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-94000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 94000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-93000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-93000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 93000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-92000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-92000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 92000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-91000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-91000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 91000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-90000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-90000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 90000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-89000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-89000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 89000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-88000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-88000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 88000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-87000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-87000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 87000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-86000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-86000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 86000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-85000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-85000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 85000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-84000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-84000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 84000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-83000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-83000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 83000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-82000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-82000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 82000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-81000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-81000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 81000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-80000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-80000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 80000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-79000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-79000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 79000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-78000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-78000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 78000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-77000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-77000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 77000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-76000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-76000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 76000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-75000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-75000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 75000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-74000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-74000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 74000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-73000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-73000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 73000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-72000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-72000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 72000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-71000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-71000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 71000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-70000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-70000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 70000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-69000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-69000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 69000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-68000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-68000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 68000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-67000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-67000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 67000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-66000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-66000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 66000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-65000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-65000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 65000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-64000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-64000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 64000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-63000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-63000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 63000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-62000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-62000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 62000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
 
export TEST_PREDS=/cluster/project2/mr/skasewa/models/1layer-small-s2s-fce-lang8/corruptions/fcec-61000
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-61000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  ${TEST_PREDS}.txt
 
echo "Predictions from Model 61000 written"
 
python3 $TSV_MAKER $TEST_PREDS 1 ${TEST_PREDS}.txt $TEST_SOURCES &
