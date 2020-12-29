# Deepspeech Inference - Version Used 0.9.3

### Clone the repo

### Get inside the directory

```
cd deepspeech_inf
```

### Download the trained model and scorer:
#### Model:
https://drive.google.com/file/d/1ZHFwkQIdJDppmcqu-_syMQVAaXiq33F6/view?usp=sharing

or use the .pbmm file from 0.9.3 release
https://github.com/mozilla/DeepSpeech/releases/download/v0.9.3/deepspeech-0.9.3-models.pbmm

#### Scorer:
https://github.com/mozilla/DeepSpeech/releases/download/v0.9.3/deepspeech-0.9.3-models.scorer

**Copy the Scorer and Model to the directory**

### Install docker from https://www.docker.com/get-started

### Build Image
```
docker build -t dsinf_image .
```


### Run container
```
docker run -dit -name dsinf --device /dev/snd:/dev/snd dsinf_image
```

### Get inside the container
```
docker exec -it dsinf bash
```

### Once inside the container run the script
```
python mic_vad_streaming.py -m ft_model.pbmm -s deepspeech-0.9.3-models.scorer
```

You can start speaking now, live transcripts will be generated
