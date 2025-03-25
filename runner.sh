#! /bin/bash

model=("cheng2020_attn" "cheng2020_anchor")
image_path="~/ML_Proj/compressai/examples/assets/9.png"


for i in 0 1; do
	for quality in 2 4 5; do
		python3 -W ignore attack_ifgsm.py  -m ${model[i]} -metric mse -q $quality -s ~/ML_Proj/compressai/examples/assets/9.png -t PGD -random_start True -momentum False -folder "PGD"
		python3 -W ignore attack_ifgsm.py  -m ${model[i]} -metric mse -q $quality -s ~/ML_Proj/compressai/examples/assets/9.png -t FGSM -random_start False -momentum False -steps 1 -folder "FGSM"
		python3 -W ignore attack_ifgsm.py  -m ${model[i]} -metric mse -q $quality -s ~/ML_Proj/compressai/examples/assets/9.png -t I-FGSM -random_start False -momentum False -folder "IFGSM"
		python3 -W ignore attack_ifgsm.py  -m ${model[i]} -metric mse -q $quality -s ~/ML_Proj/compressai/examples/assets/9.png -t M-FGSM -random_start False -momentum True -folder "MFGSM"
	done 
done
