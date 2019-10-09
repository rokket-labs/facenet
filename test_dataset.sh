export PYTHONPATH=/home/cristhoper/Projects/facenet/src

DATASET=/home/cristhoper/Projects/Downloads/lfw/raw/
DATASET_ALIGNED=/home/cristhoper/Projects/Downloads/lfw/lfw_mtcnnpy_160

for N in {1..4}; do
  python src/align/align_dataset_mtcnn.py $DATASET $DATASET_ALIGNED --image_size 160 --margin 32 --random_order --gpu_memory_fraction 0.25 &
done
#

#MODEL=/home/cristhoper/Projects/Downloads/20180402-114759
#python src/validate_on_lfw.py $DATASET_ALIGNED $MODEL --distance_metric 1 --use_flipped_images --subtract_mean --use_fixed_image_standardization
