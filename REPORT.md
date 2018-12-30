# Project: Collaboration and Competition

In this environment, two agents control rackets to bounce a ball over a net. If an agent hits the ball over the net, 
it receives a reward of +0.1. If an agent lets a ball hit the ground or hits the ball out of bounds, 
it receives a reward of -0.01. Thus, the goal of each agent is to keep the ball in play.

## Environment 

The observation space consists of 8 variables corresponding to the position and velocity of the ball and racket. 
Two continuous actions are available, corresponding to movement toward (or away from) the net, and jumping. 
In order to solve the environment, the agents must get an average score of +0.5 (over 100 consecutive episodes)

## Learning Algorithm

The environment is solved using Deep Deterministic Policy Gradients, an actor-critic algorithm. After each episode, 
we add up the rewards that each agent received (without discounting), to get a score for each agent. 
This yields 2 (potentially different) scores and then take the maximum of these 2 scores.
The DDPG algorithm helps the agents to learn with fewer steps. 

### Deep learning model architecture:-<br>

The Actor and Critic networks used two hidden layers, each of 64 neurons. 
Batch Normalization is used in Actor network for faster training. 
The non-linearity used in all layers was ReLU but for the last layer tanh was used(bound output between -1 and 1). 
The environment state is the input to Actor network and the output will be two continuous actions.
The output of the last layer of critic network gives the Q-value.

### Hyperparameters:-
BUFFER_SIZE = int(1e5)  # replay buffer size   <br>
BATCH_SIZE = 128        # minibatch size       <br> 
GAMMA = 0.99            # discount factor      <br>
TAU = 1e-3              # for soft update of target parameters <br>
LR_ACTOR = 1e-4         # learning rate of the actor           <br>
LR_CRITIC = 1e-3        # learning rate of the critic          <br>
WEIGHT_DECAY = 0        # L2 weight decay                      <br>

 
## Plot of score vs episodes(training)
![](/images/tennis_score.png)
<br>
Environment is solved in 1386 episodes with an average score of 0.51(over 100 consecutive episodes), average scores are indicated by red curve<br>
Weights file: **checkpoint_actor.pth, checkpoint_critic.pth**

## Ideas for Future Work

1) Try various hyperparameters and observe how it effects the agents performance
2) Try different network architecture
3) Use a different learning algorithm PPO or A2C

