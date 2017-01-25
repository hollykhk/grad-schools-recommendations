#!/usr/bin/env python
from numpy import genfromtxt
import shutil
import subprocess

# Get data from CSV file
my_data = genfromtxt('my_file.csv', delimiter=',', names=True, dtype=None)

# Make sasp .lp file to run base .lp program
#uni1,G1,G2,G3,T1,T2,T3,T4,W,C,S,S1,S2,S3
X = my_data[0][1]
G1 = my_data[5][1]
G2 = my_data[6][1]
G3 = my_data[7][1]
T1 = my_data[1][1]
T2 = my_data[2][1]
T3 = my_data[3][1]
T4 = my_data[4][1]
W = my_data[8][1]
C = my_data[9][1]
S = my_data[10][1]
S1 = my_data[11][1]
S2 = my_data[11][2]
S3 = my_data[11][3]

if (my_data[0][1] == 'uni1'):
    f0 = open('execute_sasp.lp','w+')
    f0.write('%'+'execute sasp program\n' + '#include \'uni1.lp\'.\n\n' +
    'uni1('+X+','+G1+','+G2+','+G3+','+T1+','+T2+','+T3+','+T4+','+W+','+C+','+S+','+S1+','+S2+','+S3+').')
    f0.close()
elif (my_data[0][1] == 'uni2'):
    f0 = open('execute_sasp.lp','w+')
    f0.write('%'+'execute sasp program\n' + '#include \'uni2.lp\'.\n\n' +
    'uni2('+X+','+G1+','+G2+','+G3+','+T1+','+T2+','+T3+','+T4+','+W+','+C+','+S+','+S1+','+S2+','+S3+').')
    f0.close()
elif (my_data[0][1] == 'uni3'):
    f0 = open('execute_sasp.lp','w+')
    f0.write('%'+'execute sasp program\n' + '#include \'uni3.lp\'.\n\n' +
    'uni3('+X+','+G1+','+G2+','+G3+','+T1+','+T2+','+T3+','+T4+','+W+','+C+','+S+','+S1+','+S2+','+S3+').')
    f0.close()
elif (my_data[0][1] == 'uni4'):
    f0 = open('execute_sasp.lp','w+')
    f0.write('%'+'execute sasp program\n' + '#include \'uni4.lp\'.\n\n' +
    'uni4('+X+','+G1+','+G2+','+G3+','+T1+','+T2+','+T3+','+T4+','+W+','+C+','+S+','+S1+','+S2+','+S3+').')
    f0.close()
elif (my_data[0][1] == 'uni5'):
    f0 = open('execute_sasp.lp','w+')
    f0.write('%'+'execute sasp program\n' + '#include \'uni5.lp\'.\n\n' +
    'uni5('+X+','+G1+','+G2+','+G3+','+T1+','+T2+','+T3+','+T4+','+W+','+C+','+S+','+S1+','+S2+','+S3+').')
    f0.close()


# Make .sh file to execute sasp .lp file we just created
f1 = open('run_sasp.sh','w+')
f1.write('#!/bin/bash\n' + '../sasp-1.0.4/sasp ../sasp-1.0.4/execute_sasp.lp > ' + X + '.txt')
f1.close()

# Make .sh file to run other .sh file in sasp directory
f1 = open('run_bash.sh','w+')
f1.write('#!/bin/bash\n' + 'bash /Users/caleb/Documents/HackAI/sasp-1.0.4/run_sasp.sh')
f1.close()

# Copy files to directory where sasp makefile resides
shutil.copy2('/Users/caleb/Documents/HackAI/Website/run_sasp.sh', '/Users/caleb/Documents/HackAI/sasp-1.0.4/')
shutil.copy2('/Users/caleb/Documents/HackAI/Website/execute_sasp.lp', '/Users/caleb/Documents/HackAI/sasp-1.0.4/')

# Call bash file in current directory
# Call params call file with base directory set to current directory
subprocess.call(["bash", "run_bash.sh"])
