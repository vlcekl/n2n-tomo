python ./n2n-tomo/train.py \
  --data ./data/input \
  --axis 0 \
  --crop-size 256 \
  --n-crops 16 \
  --train-fraction 0.5 \
  --valid-fraction 0.2 \
  --n-epochs 16 \
  --train-number 512 \
  --valid-number 256 \
  --batch-size 32 \
  --loss l2 \
  --seed 42 \
  --cuda \
  --plot-stats \
  --ckpt-save-path ./ckpts \
  --report-interval 16 
