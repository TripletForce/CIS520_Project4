//
// Created by Wyatt Smith on 4/21/2024.
//

#include <stdio.h>
#include <stdlib.h>
#include "mpi.h"



//first part of the job for this thread to tackle
int batchStart(int rank, int batches, int jobSize){
	int batchSize = jobSize/batches;
	if(jobSize>batchSize*batches)
		batchSize++;
	
	int batchStart = rank*batchSize;
	return batchStart;
}

//first part of the job for this thread to tackle (inclusive)
int batchEnd(int rank, int batches, int jobSize){
	int batchSize = jobSize/batches;
	if(jobSize>batchSize*batches)
		batchSize++;
	
	int batchEnd = (rank+1)*batchSize-1;
	
	if(batchEnd>jobSize-1)    //if it's the last batch it may be smaller
		batchEnd = jobSize-1;
	
	return batchEnd;
}

int main(int argc, char *argv[]){
	MPI_Status status;
	int num, rank, size, tag, next, from;
	
	/* Start up MPI */
	
	MPI_Init(&argc, &argv);
	MPI_Comm_rank(MPI_COMM_WORLD, &rank);
	MPI_Comm_size(MPI_COMM_WORLD, &size);
	
	
	tag = 201;
	
	
	if(argc<2){
		if(rank == 0)
			printf("Not Enough args\nproj4 [filename]\n");
		MPI_Finalize();
		return 1;
	}
	char *filename = argv[1];
	
	MPI_File f;
	int err = MPI_File_open(MPI_COMM_WORLD, filename, MPI_MODE_RDONLY, MPI_INFO_NULL, &f);
	if(err){
		if(rank == 0)
			printf("Couldn't open file %s, error %d", filename, err);
		MPI_Finalize();
		return 1;
	}
	
	MPI_Offset filesize;
	
	MPI_File_get_size(f, &filesize);
	
	int jobSize = filesize;
	int start = batchStart(rank, size, jobSize);
	int end = batchEnd(rank, size, jobSize);
	int batchSize = end-start+1;
	
	if(batchSize<=0){
		printf("weird batch, starts: %d   ends: %d\n", start, end);
		MPI_Finalize();
		return 1;
	}
	
	char *batchInput = malloc((1+batchSize)*sizeof(char));
	int *selfBuffer = malloc(batchSize*sizeof(int));
	int index = 2;
	
	if(!selfBuffer){
		printf("malloc failed for rank %d", rank);
		MPI_Finalize();
		return 1;
	}
	
	MPI_File_read_at_all(f, start, batchInput, batchSize, MPI_CHAR, MPI_STATUS_IGNORE);
	
	int maxSoFar = -10000;
	
	for(int i = 0; i<batchSize; ++i){
		char c = batchInput[i];
		if(c == '\n'){
			selfBuffer[index++] = maxSoFar;
			maxSoFar = -10000;
		}else if(c>maxSoFar){
			maxSoFar = c;
		}
	}
	
	if((maxSoFar>-10000)){ //if didn't reach end of line, max could be in next process's batch
		selfBuffer[index++] = maxSoFar;
		selfBuffer[1] = rank!=(size-1);
	}else{
		selfBuffer[1] = 0;
	}
	
	selfBuffer[0] = index;
	
	
	if(rank != 0){
		MPI_Send(selfBuffer, selfBuffer[0], MPI_INT, 0, tag, MPI_COMM_WORLD);
		free(selfBuffer);
	}else{
		//print results
		
		int *printBuffer = selfBuffer;
		
		int prevLineUnfinished = 0;
		int prevMax = 0;
		
		int line = 0;
		for(int n = 0;;){
			//print current batch (starting with self)
			int len = printBuffer[0];
			int unfinished = printBuffer[1];
			
			if(prevLineUnfinished)//if last result didn't terminate, include that
				printBuffer[2] = printBuffer[2]>prevMax ? printBuffer[2] : prevMax;
			
			for(int i = 2; i<len-1; ++i) //print all except last datum
				printf("%d:%d\n", line++, printBuffer[i]);
			
			prevMax = printBuffer[len-1];
			if(!unfinished)
				printf("%d:%d\n", line++, prevMax);
			
			prevLineUnfinished = unfinished;
			
			
			if(++n>=size)
				break;
			
			MPI_Recv(printBuffer, batchSize, MPI_INT, n, tag, MPI_COMM_WORLD, &status);
		}
		
	}
	
	
	MPI_File_close(&f);

/* Quit */
	MPI_Finalize();
	return 0;
}
