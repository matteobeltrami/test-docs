# MNIST training
CUDA_VISIBLE_DEVICES=0 python classification.py ~/data/mnist -b 128 --dataset torch/mnist --num-classes 10 \
	--model phinet --input-size 1 28 28 --epochs 20 --amp \
	--opt adam --lr 0.01 --weight-decay 0.01 --no-aug \
	--pin-mem --apex-amp --use-multi-epochs-loader --mean 0.1307 --std 0.3081 --dataset-download --log-interval 100 \
	--alpha 0.25 --num_layers 7 --beta 1 --t_zero 6 --experiment mnist_025_1_6_7_test

# CIFAR-10 training
# CUDA_VISIBLE_DEVICES=2 python classification.py ~/data/cifar10 -b 64 --dataset torch/cifar10 --num-classes 10 \
# 	--model phinet --input-size 3 160 160 --epochs 100 --amp \
# 	--opt lamb --sched cosine --lr 0.005 --weight-decay 0.02 --warmup-epochs 10 --warmup-lr 0.008 \
# 	--hflip 0.5 --aa rand-m3-mstd0.55 --mixup 0.1 --bce-loss \
# 	--pin-mem --apex-amp --use-multi-epochs-loader --dataset-download --experiment cifar10_025_1_6_7 \
# 	--alpha 0.25 --beta 1 --t_zero 6 --num_layers 7

# CIFAR-100 training
# CUDA_VISIBLE_DEVICES=1 python classification.py ~/data/cifar100 -b 64 --dataset torch/cifar100 --num-classes 100 \
# 	--model phinet --input-size 3 160 160 --epochs 100 --amp \
# 	--opt lamb --sched cosine --lr 0.005 --weight-decay 0.02 --warmup-epochs 10 --warmup-lr 0.008 \
# 	--hflip 0.5 --aa rand-m3-mstd0.55 --mixup 0.1 --bce-loss \
# 	--pin-mem --apex-amp --use-multi-epochs-loader --dataset-download --experiment cifar100_025_1_6_7 \
# 	--alpha 0.25 --beta 1 --t_zero 6 --num_layers 7
