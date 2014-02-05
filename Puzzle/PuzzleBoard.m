//
//  PuzzleBoard.m
//  Puzzle
//
//  Created by Matthew Steven Pessa on 1/31/14.
//  Copyright (c) 2014 Matthew Steven Pessa. All rights reserved.
//

#import "PuzzleBoard.h"

@implementation PuzzleBoard{
    int state[4][4];
}

-(id)init{
    return [self initWithState];
}

-(id)initWithState{
    // Initialize the state matrix to correspond to the correct tiles numbers
    if(self = [super init]){
        int x = 1;
        for(int i = 0; i < 4; i++){
            for(int j = 0; j < 4; j++){
                state[i][j] = x;
                x++;
            }
        }
        state[3][3] = 0; // Set the last position to be 0 to indicate the empty spot
    }
    return self;
}

-(void)scramble:(int)n{
    for(int i = 0; i < n; i++){
        int move = arc4random() % 15; // Not sure about this line yet
        
    }
}

-(int)getTileAtRow:(int)row Column:(int)col{
    NSLog(@"%d", state[row][col]);
    return state[row][col]; // Return the tile number at the row and column
}

-(void)getRow:(int*)row Column:(int*)col ForTile:(int)tile{
    for(int i = 0; i < 4; i++){
        for(int j = 0; j < 4; j++){
            if(tile == state[i][j]){
                NSLog(@"Found at row: %d, col: %d", i, j);
                // Need to set the row and col that were passed in. Pointers? Yay! It worked!
                *row = i;
                *col = j;
            }
        }
    }
}

-(BOOL)isSolved{
    if(state[3][3] == 0){
        for(int i = 0; i < 4; i++){
            for(int j = 0; j < 4; j++){
                
            }
        }
    }
    return NO;
}

-(BOOL)canSlideTileUpAtRow:(int)row Column:(int)col{
    if(row != 0){ // Make sure that the current row is not the top row
        if(state[row-1][col] == 0){ // Check that the spot directly above is 0
            NSLog(@"Can move up");
            return YES; // Return YES if it is
        }
    }
    return NO; // If not, return no
}

-(BOOL)canSlideTileDownAtRow:(int)row Column:(int)col{
    if(row != 3)
    if(state[row+1][col] == 0){
        NSLog(@"Can move down");
        return YES;
    }
    return NO;
}

-(BOOL)canSlideTileLeftAtRow:(int)row Column:(int)col{
    if(col != 0)
    if(state[row][col-1] == 0){
        NSLog(@"Can move left");
        return YES;
    }
    return NO;
}

-(BOOL)canSlideTileRightAtRow:(int)row Column:(int)col{
    if(col != 3)
    if(state[row][col+1] == 0){
        NSLog(@"Can move right");
        return YES;
    }
    return NO;
}

-(void)slideTileAtRow:(int)row Column:(int)col{
    int tempRow, tempCol, temp; // Create the temp variables for the swap
    for(int i = 0; i < 4; i++){
        for(int j = 0; j < 4; j++){
            if(state[i][j] == 0){ // Find the empty tile
                tempRow = i; // Set the temp variables to hold the row and col
                tempCol = j;
                break; // Break out of the loop
            }
        }
    }
    temp = state[tempRow][tempCol]; // Usual easy swap
    state[tempRow][tempCol] = state[row][col];
    state[row][col] = temp;
}

@end
