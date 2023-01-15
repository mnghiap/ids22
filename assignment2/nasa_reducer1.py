'''nasa_reducer1.py'''
'''
For each (execID, List[timestamp])
Emits (execID, absolute difference of the 2 timestamps)
'''

import sys

cur_execID = None # Storing currently read exec ID
cur_ts = [] # Storing timestamps of the exec ID
for line in sys.stdin:
    line = line.strip()
    execID, ts = line.split('\t', 1)
    try:
        ts = int(ts)
    except ValueError:
        continue
    if cur_execID == execID: # If reading the second timestamp
        cur_ts.append(ts)
    else:
        if cur_execID: # not the first execID
            print('%s\t%s' % (cur_execID, abs(cur_ts[1]-cur_ts[0]))) # print the previous execID and duration
        cur_execID = execID
        cur_ts = [ts]
if cur_execID == execID:
    print('%s\t%s' % (cur_execID, abs(cur_ts[1]-cur_ts[0])))
