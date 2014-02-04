//
//  PuzzleBoard.h
//  Puzzle
//
//  Created by Matthew Steven Pessa on 1/31/14.
//  Copyright (c) 2014 Matthew Steven Pessa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PuzzleBoard : NSObject

-(id)initWithState;

-(void)scramble:(int)n;

-(int)getTileAtRow:(int)row Column:(int)col;

-(void)getRow:(int*)row Column:(int*)col ForTile:(int)tile;

-(BOOL)isSolved;

-(BOOL)canSlideTileUpAtRow:(int)row Column:(int)col;

-(BOOL)canSlideTileDownAtRow:(int)row Column:(int)col;

-(BOOL)canSlideTileLeftAtRow:(int)row Column:(int)col;

-(BOOL)canSlideTileRightAtRow:(int)row Column:(int)col;

-(void)slideTileAtRow:(int)row Column:(int)col;
@end
