'''nasa_mapper2.py'''
'''
For each line (execID, duration)
Emits ('duration', duration) and ('count', 1)
'''

import sys

for line in sys.stdin:
    line = line.strip()
    execID, duration = line.split("\t", 1)
    try:
        duration = int(duration)
    except ValueError:
        continue
    print('duration\t%s' % (duration,))
    print('count\t1')
