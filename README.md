# openai-gym-taxi-v2-udacity

## Attempts to solve OpenAI Gym's Taxi-v2 RL environment

The skeleton of this code is from [Udacity](https://github.com/udacity/deep-reinforcement-learning/tree/master/lab-taxi).  This version uses Taxi-v2, as does theirs, even though v2 is deprecated.

The environment is from [here](https://gym.openai.com/envs/Taxi-v2/).

To do the simple demo, on Linux/Mac with Docker installed, make `taxi.sh` executable and run it:
```
git clone https://github.com/andyharless/openai-gym-taxi-v2-udacity.git
cd openai-gym-taxi-v2-udacity
chmod u+x taxi.sh
./taxi.sh
```

It should produce a score (best average reward of 100) of 9.57

Of course, I cheated by using a good seed.  If you don't cheat, the typical score is more like 9.44
