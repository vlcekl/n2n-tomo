python ../test.py \
  --data ../../data \
  --load-ckpt ../../ckpts/n2n-tomo.pt \
  --axis 0 \
  --crop-size 256 \
  --n-crops 16 \
  --batch-size 16 \
  --seed 42 \
  --cuda \
  --show-output 2
