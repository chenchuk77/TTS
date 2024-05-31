
##### setup once

# setup a virtual environment
#python -m venv venv

# activate the virtual environment
#source venv/bin/activate

# install the required packages
#pip install -r requirements.txt

#pip install TTS

# start server (download the model)
#tts-server --model_name tts_models/en/ljspeech/glow-tts


##### start finetuning

python -m pip install --upgrade pip
pip install -r requirements.txt
apt update && apt install -y tree vim

#source venv/bin/activate
python recipes/ljspeech/glow_tts/train_glowtts.py
export CUDA_VISIBLE_DEVICES="0"
