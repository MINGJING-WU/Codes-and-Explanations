l = 5  # The following sentence will be used

a = [[0 for i in range(l)] for i in range(l)]
# Create an empty grid without any beads

for i in range(l):
    for j in range(l):
        # The method to find the staggered coordinates
        if (i + j) % 2 != 0:
            a[i][j] = 'R'
        else:
            a[i][j] = 'B'

f = open("output_question_5_1.txt", "w+")  # Control the output

for i in range(l):
    s = ''
    for j in range(l):
        s = s + (a[i][j]) + ' '
    f.write(s)
    f.write('\n')
    # Write the results into the document

f.close()  # Finish the control
