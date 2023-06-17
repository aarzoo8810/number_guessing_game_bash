#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo Enter your username:
read USERNAME

GET_USER_ID=$($PSQL "SELECT user_id FROM users WHERE name='$USERNAME';")

if [[ -z $GET_USER_ID ]]
then
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
  ADD_USER=$($PSQL "INSERT INTO users(name) VALUES('$USERNAME')")
  GET_USER_ID=$($PSQL "SELECT user_id FROM users WHERE name='$USERNAME';")
else
  USERNAME=$($PSQL "SELECT name FROM users WHERE name='$USERNAME';")
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id='$GET_USER_ID';")
  BEST_GAME=$($PSQL "SELECT number_of_guesses FROM games WHERE user_id='$GET_USER_ID' ORDER BY number_of_guesses ASC LIMIT 1;")
  echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

RANGE=$((1000-1+1))
RANDOM_NUMBER=$(((($RANDOM%$RANGE))+1))
echo $RANDOM_NUMBER

echo -e "\nGuess the secret number between 1 and 1000:"
read USER_GUESS
COUNT=1

while [[ $USER_GUESS != $RANDOM_NUMBER ]]
do
    if [[ $USER_GUESS =~ ^[0-9]+$ ]]
    then
      if [[ $USER_GUESS > $RANDOM_NUMBER ]]
      then
        echo -e "\nIt's lower than that, guess again:"
      fi

      if [[ $USER_GUESS < $RANDOM_NUMBER ]]
      then
        echo -e "\nIt's higher than that, guess again:"
      fi

      COUNT=$(($COUNT + 1))
      echo $COUNT
    else
      echo -e "\nThat is not an integer, guess again:"
    fi
    read USER_GUESS
  done

ADD_GAME=$($PSQL "INSERT INTO games(user_id, number_of_guesses) VALUES('$GET_USER_ID', '$COUNT')")
echo -e "\nYou guessed it in $COUNT tries. The secret number was $RANDOM_NUMBER. Nice job!"
