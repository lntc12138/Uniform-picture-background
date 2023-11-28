# -*- coding: utf-8 -*-
"""
Created on Sun Nov  5 17:40:09 2023

@author: Nian Liu
"""
import numpy as np
from skimage import io
im = io.imread("Fill in the path of the export folder here/1_output.tif")
# Fill in the path of the export folder here/在这里填写导出文件夹的路径
# For example, D:/Code/output
               
from skimage.color import lab2rgb
im_rgb = lab2rgb(im)
im_rgb_256 = im_rgb*255
im_rgb_256 = im_rgb_256.astype(np.uint8)

from matplotlib import pyplot as plt
plt.imshow(im_rgb_256)
io.imsave("Fill in the path of the export folder here/1_output_rgb.jpg", im_rgb_256)
# Fill in the path of the export folder here/在这里填写导出文件夹的路径
# For example, D:/Code/output