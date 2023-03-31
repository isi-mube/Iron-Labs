# This script selects a random subset of images from the Food-101 dataset and
# copies them to an output folder. Note that if you don't want pictures of
# pizza in the output, you must move the pizza folder out of the Food-101
# folder before running this script.

from random import randrange
import shutil
import glob

input_dir = "C:\\Users\\Carlos\\Downloads\\food-101\\food-101\\"
output_dir = "C:\\Users\\Carlos\\Desktop\\nopizza\\"
subset_size = 983

images = glob.glob(input_dir + "images\\*\\*.jpg")
selected = []

for i in range(subset_size):
    r = randrange(len(images))
    selected.append(images[r])
    del images[r]

for f in selected:
    shutil.copy(f, output_dir)
