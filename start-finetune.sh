
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
pip install TTS
pip install --ignore-installed blinker
pip install TTS

#source venv/bin/activate


export CUDA_VISIBLE_DEVICES="0"
export RESTORE_PATH="/workspace/tts_models--en--ljspeech--glow-tts/model_file.pth"

python recipes/ljspeech/glow_tts/train_glowtts.py --restore_path=$RESTORE_PATH


