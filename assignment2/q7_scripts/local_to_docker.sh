# This script copies all needed files to docker container
CONTAINER_NAME='romantic_heyrovsky' # Change your container name here
STUDENT_ID='394806' # Change your student ID here

docker cp ./datasets/nasa-cev-software-tests-randomized-{$STUDENT_ID}.tsv \
{$CONTAINER_NAME}:/usr/local/hadoop/{$STUDENT_ID}-event-log/nasa-cev-software-tests-randomized-{$STUDENT_ID}.tsv

docker cp ./nasa_mapper1.py {$CONTAINER_NAME}:/usr/local/hadoop/${STUDENT_ID}-event-log/nasa_mapper1.py

docker cp ./nasa_reducer1.py {$CONTAINER_NAME}:/usr/local/hadoop/${STUDENT_ID}-event-log/nasa_reducer1.py

docker cp ./nasa_mapper2.py {$CONTAINER_NAME}:/usr/local/hadoop/${STUDENT_ID}-event-log/nasa_mapper2.py

docker cp ./nasa_reducer2.py {$CONTAINER_NAME}:/usr/local/hadoop/${STUDENT_ID}-event-log/nasa_reducer2.py