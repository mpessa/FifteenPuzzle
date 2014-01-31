//
//  PuzzleViewController.m
//  Puzzle
//
//  Created by Matthew Steven Pessa on 1/31/14.
//  Copyright (c) 2014 Matthew Steven Pessa. All rights reserved.
//

#import "PuzzleViewController.h"
#import "PuzzleBoard.h"

@interface PuzzleViewController ()

@end

@implementation PuzzleViewController

-(id)init{
    
}

- (void)viewDidLoad
{
	// Do any additional setup after loading the view, typically from a nib.
    [super viewDidLoad]; // create/init board
    [self.board scramble:NUM_SHUFFLES]; // scramble tiles
    [self arrangeBoardView]; // sync view with model
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tileSelected:(UIButton *)sender {
    const int tag = [sender tag];
    NSLog(@"tileSelected: %d", tag);
    int row, col;
    [self.board getRow:&row Column:&col ForTile:tag];
    CGRect buttonFrame = sender.frame;
    if([self.board canSlideTileUpAtRow:row Column:col]){
        [self.board slideTileAtRow:row Column:col];
        buttonFrame.origin.y = (row-1)*buttonFrame.size.height;
        [UIView animateWithDuration:0.5 animations:^{sender.frame = buttonFrame;}];
    }
}

- (IBAction)scrambleTiles:(id)sender {
    [self.board scramble:NUM_SHUFFLES];
    [self arrangeBoardView];
}

-(id)arrangeBoardView{
    const CGRect boardBounds = self.boardView.bounds;
    const CGFloat tileWidth = boardBounds.size.width / 4;
    const CGFloat tileHeight = boardBounds.size.height / 4;
    for(int row = 0; row < 4; row++){
        for(int col = 0; col < 4; col++){
            const int tile = [self.board getTileAtRow:row Column:col];
            if(tile > 0){
                UIButton *button = (UIButton *)[self.boardView viewWithTag:tile];
                button.frame = CGRectMake(col*tileWidth, row*tileHeight, tileWidth, tileHeight);
            }
        }
    }
}



@end
