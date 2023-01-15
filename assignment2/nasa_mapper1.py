'''nasa_mapper1.py'''
'''
For each line (function, timestamp, lifecycle, execID)
Emits (execID, timestamp)
'''

import sys

for line in sys.stdin:
    line = line.strip()
    words = line.split() # Each line is function / timestamp / lifecycle / execID
    print('%s\t%s' % (words[3], words[1])) # Print execID with the timestamp
# We only need to print the timestamp, not the start/complete, because
# there would be only 2 timestamp for each activity
# their absolute difference is the exec duration
