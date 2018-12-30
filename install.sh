conda create --name drlnd python=3.6
source activate drlnd
git clone https://github.com/udacity/deep-reinforcement-learning.git
cd deep-reinforcement-learning/python
pip install .
python -m ipykernel install --user --name drlnd --display-name "drlnd"
git clone https://github.com/Nishanth009/Udacity-Reinforcement-learning-Project---Continous-Control.git
cd Udacity-Reinforcement-learning-Project---Continous-Control
wget "https://s3-us-west-1.amazonaws.com/udacity-drlnd/P2/Reacher/Reacher_Linux.zip"
unzip Reacher_Linux.zip
wget "https://s3-us-west-1.amazonaws.com/udacity-drlnd/P2/Reacher/Reacher.app.zip"
unzip Reacher.app.zip
wget "https://s3-us-west-1.amazonaws.com/udacity-drlnd/P2/Reacher/Reacher_Windows_x86.zip"
unzip Reacher_Windows_x86.zip
wget "https://s3-us-west-1.amazonaws.com/udacity-drlnd/P2/Reacher/Reacher_Windows_x86_64.zip"
unzip Reacher_Windows_x86_64.zip
