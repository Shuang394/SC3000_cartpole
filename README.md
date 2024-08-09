# SC3000 Cartpole Project
## Overview
Task 1: Development of RL Agent
- Sampling of random state from the CartPole Environment 
Task 2: Demonstrate the effectiveness of the RL agent
- Running 50000 episodes of the RL agent 
- Plotting cumulative reward against episodes using Matplotlib 
- Calculation of average reward over the 100 episodes 
Task 3: Render one episode played by the developed RL agent on Jupyter
- Rendering video of an episode of our trained RL agent
Task 4: Format the Jupyter notebook
- Writing of step-by-step instructions and explanations

---

# Task 1: Development of the RL Agent

## Brief Summary 

Q-Learning was my Deep reinformcement learning method of choice for the cart pole problem. I have attempted a monte-carlo solution, but found it to be poor at training the agent.

1. In the Jupyter Notebook, I started by initialising an empty Q table with rows that can be dynamically added
2. For the first 500 episodes, have the agent explore and update the Q table with every step by randomizing its choice (5050 left or right). Make sure to round off the position of the cart to 2d.p, otherwise your q-table is going to have too many entries (as each entry is a position the cart is in, along with the pole's position)
3. At episodes > 500, have it choose to rely on the Q-table 50% of the time, and make a random choice 50% of the time (You can adjust this by adjusting the value of epsilon from the q-learning formula)
4. episodes > 1500, rely on the Q-table 70% of the time
5. Eventually, have it fully rely on the Q-table

---

I had 3 different versions of the Q-Learning agent, each experimenting with different values for the q-learning formula

## Version 1: 

```python
learning_rate = 0.1
epsilon = 0.5
numberOfEpisodes = 50000
gamma = 0.99
```

![image](https://github.com/user-attachments/assets/367151bf-97b4-47a5-9bc6-1708adfc95d7)

Average reward of each episode:  246.10762

## Version 2:

```python
learning_rate2 = 0.1
epsilon2 = 0.33
numberOfEpisodes = 50000
gamma2 = 0.99
```

![image](https://github.com/user-attachments/assets/8202682e-4b80-4d08-b00e-280d8ec05986)

Average reward of each episode:  140.7636

## Version 3:

```python
learning_rate3 = 0.1
epsilon3 = 0.75
numberOfEpisodes = 50000
gamma3 = 0.99
```

![image](https://github.com/user-attachments/assets/3545cd7a-70ec-4837-b2f3-07e9ead39ce0)
Average reward of each episode:  101.23658

---

# Task 3

## Let the trained agent run for 100 episodes and note the performance

![image](https://github.com/user-attachments/assets/8ef4fc80-7bf0-4f35-8046-0c815558b444)

Average cumulative reward: 264.71 (Each move the cart makes without the pole falling is +1 reward)
Is my agent good enough? True


---
# Video of the cartpole



https://github.com/user-attachments/assets/a7650738-c168-4e76-95b1-c7a7fd538c27





