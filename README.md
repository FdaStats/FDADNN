# Functional Regression via Deep Neural Networks
------------------------------------------------

# Functional Data Regression Model
![model](https://latex.codecogs.com/gif.latex?Y_%7Bij%7D%20%3Df_0%5Cleft%28%5Cmathbf%7BX%7D_j%5Cright%29%20&plus;%20%5Cepsilon_%7Bi%7D%5Cleft%28%5Cmathbf%7BX%7D_j%5Cright%29%2C%20%7E%7Ei%20%3D%201%2C%202%2C%20%5Cldots%2C%20n%2C%20j%20%3D%201%2C%202%2C%20%5Cldots%2C%20N)
- ![X](https://latex.codecogs.com/gif.latex?%5Cmathbf%7BX%7D_%7Bj%7D%5Cin%20%5Cmathbb%7BR%7D%5Ed): fixed vector of length d for the j-th observational point
- ![Y](https://latex.codecogs.com/gif.latex?Y_%7Bij%7D): scalar random variable for the i-th subject and j-th observational point
- ![n](https://latex.codecogs.com/gif.latex?n): sample size
- ![N](https://latex.codecogs.com/gif.latex?N): number of observational points
- ![f](https://latex.codecogs.com/gif.latex?f_0%3A%20%5Cmathbb%7BR%7D%5Ed%20%5Crightarrow%20%5Cmathbb%7BR%7D): true function to estimate

# Deep Neural Network Model input and output
- Input: ![X](https://latex.codecogs.com/gif.latex?%5Cmathbf%7BX%7D_%7Bj%7D) (uniform among all i for the same j)
- Output: ![Y](https://latex.codecogs.com/gif.latex?Y_%7Bij%7D)
-------------------------------------------------------------

# Deep Neural Network Hyperparameters 
- L: number of layers 
- p: neurons per layer (uniform for all layers)
- s: l1 penalty parameter
- Loss function: square loss
- Batch size: data dependent
- Epoch number: data dependent
- Activation function: ReLU
- Optimizer: Adam 
-------------------------------------------------------------

# Function descriptions
- Download the r package under "master" branch
-------------------------------------------------------------

