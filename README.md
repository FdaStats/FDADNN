# Functional Regression via Deep Neural Networks
------------------------------------------------

# Functional Data Regression Model

<!-- # $Y_{ij} = f_{0} \ (\mathrm{X}_{j}) + \epsilon_{i} \ (\mathrm{X}_{j}) \ , \ \ \ i = 1, 2,..., n \ , \ j = 1, 2, ..., N$ -->

# $Y_{ij} = f_{0}  (\mathrm{X}_{j}) + \epsilon_{i}  (\mathrm{X}_{j})  ,  i = 1, 2,..., n  ,  j = 1, 2, ..., N$



-  $\mathrm{X}_{j} \in \mathbb{R} ^ {d}$: fixed vector of length d for the j-th observational point
- $Y_{ij}$: scalar random variable for the i-th subject and j-th observational point
- $\epsilon_{i} \ (\mathrm{X}_{j})$: error random process with measurement error for the i-th subject and j-th observational point
- $n$: sample size
- $N$: number of observational points
- $f_{0}: \mathbb{R} ^ {d} \to \mathbb{R}$: true function to estimate

# Deep Neural Network Model input and output
- Input: $\mathrm{X}_{j}$
- Output: $Y_{j}$
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

