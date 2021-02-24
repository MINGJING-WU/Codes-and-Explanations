B = 1451
W = 1072
G = 977
Y = 457
R = 139
L = 64
# The following sentence will be used

A = [[0 for i in range(L)] for i in range(L)]
# Create an empty grid without any beads

for i in range(L):
    for j in range(L):
        # The method to find the staggered coordinates
        if (i + j) % 2 == 0:
            if G != 1:
                # Keep one green bead until the end
                # Put green beads onto the staggered grid FIRST
                A[i][j] = 'G'
                G = G - 1
            elif W != 0:
                A[i][j] = 'W'
                W = W - 1
                # After using up the green beads, THEN put white beads onto the staggered grid
        else:
            # Use up the blue beads, yellow beads, and red beads (The order doesn't matter here)
            if B != 0:
                A[i][j] = 'B'
                B = B - 1
            elif Y != 0:
                A[i][j] = 'Y'
                Y = Y - 1
            elif R != 0:
                A[i][j] = 'R'
                R = R - 1

A[63][62] = 'G'
# Put the remaining green bead onto the last remaining space near the bottom right corner

f = open("output_question_5_2.txt", "w+")  # Control the output

for i in range(L):
    s = ''
    for j in range(L):
        s = s + (A[i][j]) + ' '
    f.write(s)
    f.write('\n')
    # Write the results into the document

f.close()  # Finish the control
