from skimage import measure
# The key packages to solve this question

import numpy as np
# Use to fix the input

import random
# Need to use random() function to randomly create a matrix

L = 20  # The following sentence will be used

A = [[int(random.randint(0, 1)) for i in range(L)] for i in range(L)]
# Create a 20 x 20 matrix and randomly generate 0 and 1 in this matrix

A = np.array(A)
# Because the Scikit-image package needs the NumPy array as image object to input
# So, np.array() function can fix the input, changing {int} A into NumPy array

A = A.astype(bool)
# Because the label() function in the Scikit-image package needs to input.dtype == bool
# So, np.astype() function can fix the input again
# However, in the process of debugging, I found that it's OK not to use this statement.
# The label() function operate normally without A = A.astype(bool)

Y = measure.label(A, background=0, return_num=False, connectivity=2)
# Use the label() function in the measure function of the Scikit-image package
# Implement 8-connectivity

f = open("output_4_8connectivity.txt", "w+")  # Control the output

for i in range(L):
    a = ''
    for j in range(L):
        a = a + str(int(Y[i][j])) + ' '
    print(a)
    f.write(a)
    f.write('\n')
    # Write the results into the document

f.close()  # Finish the control
