//
//  PuzzleBoard.m
//  Puzzle
//
//  Created by Matthew Steven Pessa on 1/31/14.
//  Copyright (c) 2014 Matthew Steven Pessa. All rights reserved.
//

#import "PuzzleBoard.h"

@implementation PuzzleBoard

-(id)initWithState{
    int state[4][4];
    int x = 1;
    for(int i = 0; i < 4; i++){
        for(int j = 0; j < 4; j++){
            state[i][j] = x;
            NSLog(@"row: %d, col: %d, val: %d", i, j, x);
            x++;
        }
    }
    state[3][3] = 0;
    return self;
}

-(void)scramble:(int)n{
    
}

-(int)getTileAtRow:(int)row Column:(int)col{
    return -1;
}

-(void)getRow:(int*)row Column:(int*)col ForTile:(int)tile{
    
}

-(BOOL)isSolved{
    return NO;
}

-(BOOL)canSlideTileUpAtRow:(int)row Column:(int)col{
    return NO;
}

-(BOOL)canSlideTileDownAtRow:(int)row Column:(int)col{
    return NO;
}

-(BOOL)canSlideTileLeftAtRow:(int)row Column:(int)col{
    return NO;
}

-(BOOL)canSlideTileRightAtRow:(int)row Column:(int)col{
    return NO;
}

-(void)slideTileAtRow:(int)row Column:(int)col{
    
}

@end
