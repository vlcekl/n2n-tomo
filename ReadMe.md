# Noise2Noise-tomo: Denoising x-ray microtomography reconstructions.

This is a modification of the unofficial PyTorch implementation by [Joey
Litalien](https://github.com/joeylitalien/noise2noise-pytorch) of the original
algorithm [Noise2Noise](https://arxiv.org/abs/1803.04189) (Lehtinen et al.
2018). Added is tomography specific dataset and processing functionality.

## Dependencies (requires python 3.6 and higher)

* [NumPy](http://www.numpy.org/) (1.14.2)
* [Matplotlib](https://matplotlib.org/) (2.2.3)
* [PyTorch](https://pytorch.org/) (0.4.1)
* [Torchvision](https://pytorch.org/docs/stable/torchvision/index.html) (0.2.0)

To install the latest version of all packages, run
```
pip3 install --user -r requirements.txt
```

This code was tested with Python 3.7.5 on Linux

## Dataset
Original 3D reconstructed data from tomopy in NetCDF3 format (.nc) are stored
in ./data/input. Output data are stored in ./data/output

## Training & testing

python ./run/train.sh
python ./run/test.sh

Examples of the shell scripts are provided in ./run directory.
Model checkpoints are automatically saved after every epoch in ./ckpts. To
test the denoiser, provide `test.py` with a PyTorch model (`.pt` file) via the
argument `--load-ckpt` and input data directory.

## References
* Jaakko Lehtinen, Jacob Munkberg, Jon Hasselgren, Samuli Laine, Tero Karras, Miika Aittala,and Timo Aila. [*Noise2Noise: Learning Image Restoration without Clean Data*](https://research.nvidia.com/publication/2018-07_Noise2Noise%3A-Learning-Image). Proceedings of the 35th International Conference on Machine Learning, 2018.
* Tsung-Yi Lin, Michael Maire, Serge Belongie, Lubomir Bourdev, Ross Girshick, James Hays, Pietro Perona, Deva Ramanan, C. Lawrence Zitnick, and Piotr Dollár. [*Microsoft COCO: Common Objects in Context*](https://arxiv.org/abs/1405.0312). arXiv:1405.0312, 2014.

## Acknowledgments

I would like to acknowledge [Joey Litalien](https://github.com/joeylitalien/noise2noise-pytorch) whose code was
the basis for this X-ray microtomographic adaptation.
