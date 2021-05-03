#!/bin/bash

TESTNUMBER=1
TIME=3600
HOST=hostheree
DATABASE=MoviesDB
USER=userhere
PASSWORD=passwordhere

while [[ $TIME -gt 0 ]];

do


echo "Test $TESTNUMBER MySQL connection to $HOST"
echo "...by the way these are 5 best all time Movies in IMDB"

sudo mysql -h $HOST -D  $DATABASE -e "SELECT MovieRank,MovieName,MovieRate FROM MoviesIMDB WHERE MovieRank BETWEEN 1 and 5 ;" -u $USER -p$PASSWORD  2> /dev/null


TESTNUMBER=$(( $TESTNUMBER + 1))
TIME=$(( $TIME - 2))

#rm -rf result.txt

sleep 2

done

echo "Time is up, Test is over"

exit 0
