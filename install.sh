conda create --name drlnd python=3.6
source activate drlnd
git clone https://github.com/udacity/deep-reinforcement-learning.git
cd deep-reinforcement-learning/python
pip install .
python -m ipykernel install --user --name drlnd --display-name "drlnd"
git clone https://github.com/Nishanth009/Udacity-Nanodegree-Collaboration-Competition-RL-Project.git
cd Udacity-Nanodegree-Collaboration-Competition-RL-Project
wget "https://s3-us-west-1.amazonaws.com/udacity-drlnd/P3/Tennis/Tennis_Linux.zip"
unzip Tennis_Linux.zip
wget "https://s3-us-west-1.amazonaws.com/udacity-drlnd/P3/Tennis/Tennis.app.zip"
unzip Tennis.app.zip
wget "https://s3-us-west-1.amazonaws.com/udacity-drlnd/P3/Tennis/Tennis_Windows_x86.zip"
unzip Tennis_Windows_x86.zip
wget "https://s3-us-west-1.amazonaws.com/udacity-drlnd/P3/Tennis/Tennis_Windows_x86_64.zip"
unzip Tennis_Windows_x86_64.zip
