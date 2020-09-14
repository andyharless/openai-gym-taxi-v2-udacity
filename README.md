# openai-gym-taxi-v2-udacity

## Attempts to solve OpenAI Gym's Taxi-v2 RL environment

The skeleton of this code is from [Udacity](https://github.com/udacity/deep-reinforcement-learning/tree/master/lab-taxi).  This version uses Taxi-v2, as does theirs, even though v2 is deprecated.  (But I also did v3 [here](https://github.com/andyharless/openai-gym-taxi-v3-udacity).)

The environment is from [here](https://gym.openai.com/envs/Taxi-v2/).

To do the simple demo, on Linux/Mac with Docker installed, make `taxi.sh` executable and run it:
```
git clone https://github.com/andyharless/openai-gym-taxi-v2-udacity.git
cd openai-gym-taxi-v2-udacity
chmod u+x taxi.sh
./taxi.sh
```

This version uses a variation on standard Q-learning.  The policy is epsilon-greedy, but when the non-greedy action is chosen, instead of being sampled from a uniform distribution, it is sampled from a distribution that reflects two things:
   - a preference for actions with higher Q values (i.e. "greedy but flexible")
   - a preference for novel actions (those that have recently been less often chosen in the current state)

The latter are tracked via a "path memory" table (same shape as the Q table), which counts how often each action is taken in each state.  At the end of each episode, path memories from the previous episode decay geometrically.  

The sampling distribution for stochastic actions is the softmax of a linear combination of the Q values (with a positive coefficient) and the path memory values (with a negative coefficient).

It should produce a score (best average reward of 100) of 9.57  (The [`output.txt`](https://github.com/andyharless/openai-gym-taxi-v2-udacity/blob/master/output.txt) file shows a sample output.)

As of 2020-09-14 it is #8 on the [Leaderboard](https://github.com/openai/gym/wiki/Leaderboard#TaxiV2) for the v3 Taxi environment at OpenAI Gym, but I cheated by using a good seed for my random numbers.  If you use a truly random seed, the typical score is more like 9.44  
