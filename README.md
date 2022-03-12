# Functional Regression via Deep Neural Networks
------------------------------------------------

# Functional Data Regression Model
![model](https://latex.codecogs.com/gif.latex?Y_%7Bij%7D%20%3Df_0%5Cleft%28%5Cmathbf%7BX%7D_j%5Cright%29%20&plus;%20%5Cepsilon_%7Bi%7D%5Cleft%28%5Cmathbf%7BX%7D_j%5Cright%29%2C%20%7E%7Ei%20%3D%201%2C%202%2C%20%5Cldots%2C%20n%2C%20j%20%3D%201%2C%202%2C%20%5Cldots%2C%20N)
- ![X](https://latex.codecogs.com/gif.latex?%5Cmathbf%7BX%7D_%7Bj%7D%5Cin%20%5Cmathbb%7BR%7D%5Ed): fixed vector of length d for the j-th observational point
- ![Y](https://latex.codecogs.com/gif.latex?Y_%7Bij%7D): scalar random variable for the i-th subject and j-th observational point
- ![error](https://latex.codecogs.com/gif.latex?%5Cepsilon_%7Bi%7D%5Cleft%28%5Cmathbf%7BX%7D_j%5Cright%29): error random process with measurement error for the i-th subject and j-th observational point
- ![n](https://latex.codecogs.com/gif.latex?n): sample size
- ![N](https://latex.codecogs.com/gif.latex?N): number of observational points
- ![f](https://latex.codecogs.com/gif.latex?f_0%3A%20%5Cmathbb%7BR%7D%5Ed%20%5Crightarrow%20%5Cmathbb%7BR%7D): true function to estimate

# Deep Neural Network Model input and output
- Input: ![X](https://latex.codecogs.com/gif.latex?%5Cmathbf%7BX%7D_%7Bj%7D)
- Output: ![Y](https://latex.codecogs.com/gif.latex?%5Coverline%7BY%7D_%7B%5Ccdot%20j%7D)
-------------------------------------------------------------

# Deep Neural Network Hyperparameters and Structures
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
- Main function is in "FDADNN.R".
- 2D and 3D examples are in "example.R".
- The package is under "master" branch. Download and install the r package. Use "help" for more function details and examples.
-------------------------------------------------------------

