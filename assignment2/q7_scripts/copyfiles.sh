# When running inside the container, this script copies all needed file
# from the docker container to the Hadoop FS

STUDENT_ID='394806' # Change your student ID here

# Make dirs
hadoop fs -mkdir /input/
hadoop fs -mkdir /input/${STUDENT_ID}-event-log/
hadoop fs -mkdir /job1/
hadoop fs -mkdir /job2/

# Copy event log to HDFS
hadoop fs -copyFromLocal /usr/local/hadoop/${STUDENT_ID}-event-log/nasa-cev-software-tests-randomized-${STUDENT_ID}.tsv \
/input/${STUDENT_ID}-event-log/nasa-cev-software-tests-randomized-${STUDENT_ID}.tsv

# Copy all mappers and reducers to HDFS
hadoop fs -copyFromLocal /usr/local/hadoop/${STUDENT_ID}-event-log/nasa_mapper1.py /input/${STUDENT_ID}-event-log/nasa_mapper1.py
hadoop fs -copyFromLocal /usr/local/hadoop/${STUDENT_ID}-event-log/nasa_reducer1.py /input/${STUDENT_ID}-event-log/nasa_reducer1.py
hadoop fs -copyFromLocal /usr/local/hadoop/${STUDENT_ID}-event-log/nasa_mapper2.py /input${STUDENT_ID}-event-log/nasa_mapper2.py
hadoop fs -copyFromLocal /usr/local/hadoop/${STUDENT_ID}-event-log/nasa_reducer2.py /input/${STUDENT_ID}-event-log/nasa_reducer2.py