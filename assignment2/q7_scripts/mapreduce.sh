# This script is to be executed inside the container
# It executes 2 Map Reduce jobs for question 7

STUDENT_ID='394806' # Change your student ID here

# First map reduce job

hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.10.1.jar \
-file /usr/local/hadoop/${STUDENT_ID}-event-log/nasa_mapper1.py \
-mapper "python nasa_mapper1.py" \
-file /usr/local/hadoop/${STUDENT_ID}-event-log/nasa_reducer1.py \
-reducer "python nasa_reducer1.py" \
-input /nasa-cev-software-tests-randomized-394806.tsv \
-output /job1/output1

# Second map reduce job

hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.10.1.jar \
-file /usr/local/hadoop/${STUDENT_ID}-event-log/nasa_mapper2.py \
-mapper "python nasa_mapper2.py" \
-file /usr/local/hadoop/${STUDENT_ID}-event-log/nasa_reducer2.py \
-reducer "python nasa_reducer2.py" \
-input /job1/output1 \
-output /job2/output2