#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define NUM_THREADS 4

#define ARRAY_SIZE 16000000
#define STRING_SIZE 16
#define ALPHABET_SIZE 26

char char_array[ARRAY_SIZE][STRING_SIZE];
int char_counts[ALPHABET_SIZE];			// count of individual characters
char file_name[] = "~dan/625/wiki_dump.txt";


char getRandomChar()
{
	int randNum = 0;
	char randChar = ' ';

	randNum = ALPHABET_SIZE * (rand() / (RAND_MAX + 1.0)); 	// pick number 0 < # < 25
	randNum = randNum + 97;				// scale to 'a'
	randChar = (char) randNum;

	// printf("%c", randChar);
	return randChar;
}

void init_arrays()
{
  int i, j; 

  // Populate the array with data
  for ( i = 0; i < ARRAY_SIZE; i++) {
    for ( j = 0; j < STRING_SIZE; j++ ) {
      char_array[i][j] = getRandomChar();
    }
  }

  // Initialize the array for holding character frequencies
  for ( i = 0; i < ALPHABET_SIZE; i++ ) {
  	char_counts[i] = 0;
  }
}
/*
int read_file()
{
  int i, j;

  // Open a file in read mode
  FILE *fptr = fopen(file_name, "r"); 
  if(fptr==NULL) return 0;

  //Needed to read file
  char * line = NULL;
  size_t len = 0;
  size_t read;

  // Populate the array with data
  for ( i = 0; i < ARRAY_SIZE; i++) {
    read = getline(&line, &len, fptr);

    for ( j = 0; j < STRING_SIZE; j++ ) {
      char_array[i][j] = ;
    }
  }

  // Initialize the array for holding character frequencies
  for ( i = 0; i < ALPHABET_SIZE; i++ ) {
  	char_counts[i] = 0;
  }
  return 1;
}
*/

void *count_array(void *arg) {
    int myID = *((int *) arg); // Casting the argument to int
    char theChar;
    int i, j, charLoc;
    int local_char_count[ALPHABET_SIZE];

    int startPos = myID * (ARRAY_SIZE / NUM_THREADS);
    int endPos = startPos + (ARRAY_SIZE / NUM_THREADS);

    printf("Thread %d: startPos = %d, endPos = %d \n", myID, startPos, endPos);

    // Init local count array
    for (i = 0; i < ALPHABET_SIZE; i++) {
        local_char_count[i] = 0;
    }

    // Count up our section of the global array
    for (i = startPos; i < endPos; i++) {
        for (j = 0; j < STRING_SIZE; j++) {
            theChar = char_array[i][j];
            charLoc = ((int) theChar) - 97;
            local_char_count[charLoc]++;
        }
    }

    // Sum up the partial counts into the global arrays
    for (i = 0; i < ALPHABET_SIZE; i++) {
        char_counts[i] += local_char_count[i];
    }

    pthread_exit(NULL); // Exiting thread
}

void print_results()
{
  int i, total = 0;

  // then print out the totals
  for ( i = 0; i < ALPHABET_SIZE; i++ ) {
     total += char_counts[i];
     printf(" %c %d\n", (char) (i + 97), char_counts[i]);
  }
  
  printf("\nTotal characters:  %d\n", total);
}

int main() {
	pthread_t threads[NUM_THREADS]; // Array to hold thread IDs
  int thread_args[NUM_THREADS];   // Array to hold thread arguments
	int i;

	init_arrays();

	// Create threads
  for (i = 0; i < NUM_THREADS; i++) {
      thread_args[i] = i;
      pthread_create(&threads[i], NULL, count_array, (void *) &thread_args[i]);
  }

  // Join threads
  for (i = 0; i < NUM_THREADS; i++) {
      pthread_join(threads[i], NULL);
  }

	print_results();
	
	pthread_exit(NULL);
}