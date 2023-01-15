'''nasa_reducer2.py'''
'''
For each ('duration', list of durations)
Emits ('duration', sum of the durations)
For each ('count', list of counts), all count should be 1
Emits ('count', sum of the counts)
'''

import sys

cur_key = None # Store the current key ('duration' or 'count')
cur_sum = 0 # Store the current cumulative sum

for line in sys.stdin:
    line = line.strip()
    key, count = line.split('\t', 1)
    try:
        count = int(count)
    except ValueError:
        continue
    if cur_key == key:
        cur_sum += count
    else:
        if cur_key:
            print('%s\t%s' % (cur_key, cur_sum))
        cur_key = key
        cur_sum = count
if cur_key == key:
    print('%s\t%s' % (cur_key, cur_sum))
