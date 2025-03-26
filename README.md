# Investigating the Impact of Adversarial Attacks on AI-Based Image Compression Models
nic_adv_attacks

In recent years, artificial neural networks have been widely used for their ability to quickly process large amounts of data and find non-linear dependencies in the data. Neural networks are used mainly for classification and regression tasks (detection of objects in photos and videos, financial risk analysis, and many others).  A separate niche in the types of artificial neural networks is occupied by generative models that are used to generate new data.  Their architecture consists of two key blocks: an encoder (compresses the source data) and a decoder (decompresses the processed data). This architecture is very similar to the process of compression algorithms, so reports began to appear in the scientific community about the use of convolutional neural networks in the problem of data compression. And they show quite good results, comparable in quality to current compression algorithms. \
However, the main problem with applying convolutional neural networks to data compression tasks is their extreme sensitivity to external noise, which leads to their incorrect operation.
To explore the compression models adversarial attacks resistance we use Discretized Gaussian Mixture Likelihood models: Cheng2020Anchor and Cheng2020Attn and the several attack strategies.

**Input image**            |  **Output image**
:-------------------------:|:-------------------------:
![](https://github.com/bernkastel-bio/nic-adv-attacks/blob/45b376cdb8161397377c564c5bc9625f6be18064/kodak_full/cheng2020_anchor_6_mse_9_advin_FGSM.png)   |  ![](https://github.com/bernkastel-bio/nic-adv-attacks/blob/45b376cdb8161397377c564c5bc9625f6be18064/kodak_full/cheng2020_anchor_6_mse_9_advout_FGSM.png)

# User guide

## Installation and dependencies:

All necessary dependencies are in file [requirements.txt](https://github.com/bernkastel-bio/nic-adv-attacks/blob/main/requirements.txt)
Make the environment (pipenv or conda): \
`pip`: 
```bash
$ python -m venv your_env
$ source your_env/bin/activate
```
`conda`: 
```bash
$ conda create -n your_env
$ conda activate your_env
```
Then, install the requirements: 
```bash
$ pip install -r requirements.txt
```
To check: 
```bash
$ pip freeze
```
or 
```
$ conda list
```
\
After creating the environment with all dependencies you need to clone the following 2 repositories:
* [CompressAI](https://github.com/InterDigitalInc/CompressAI): framework with image compression models
* [ImageCompression_Adversarial](https://github.com/tongxyh/ImageCompression_Adversarial): repository with image attack scripts
```
$ git clone https://github.com/InterDigitalInc/CompressAI.git
$ git clone https://github.com/tongxyh/ImageCompression_Adversarial.git
```
Then you need to build the CompressAI repo: 
```
$ cd CompressAI/
$ pip install -e
```
Ater that the following files must appear in compressai/ directory:
* `_CXX.cpython-310-x86_64-linux-gnu.so`
* `ans.cpython-310-x86_64-linux-gnu.so`
\
Then copy the directory `./CompressAI/compressai` to the `./ImageCompression_Adversarial`: 
```
$ cp -r ./compressai/ ./ImageCompression_Adversarial/
```
You can run attacks with the provided script:
```
$ bash runner.sh
```
### calculations

all calculations were done on google colab or personal computers. 

evaluation runs counter: 20 (All results in the article are averaged over these launches)

## Licence

nic_adv_attacks is licensed under the MIT License

## Authors

Gennady Shutkov, Alexey Morozov, Egor Miroshnichenko, Timur Nabiev, Razan Dibo

## Related works

* Z. Cheng et al. 2020: https://github.com/ZhengxueCheng/Learned-Image-Compression-with-GMM-and-Attention
* Kodak image dataset: http://r0k.us/graphics/kodak/
* https://arxiv.org/pdf/1412.6572
* https://arxiv.org/abs/1607.02533
* https://arxiv.org/pdf/1710.06081




