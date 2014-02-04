//
//  PuzzleViewController.h
//  Puzzle
//
//  Created by Matthew Steven Pessa on 1/31/14.
//  Copyright (c) 2014 Matthew Steven Pessa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PuzzleBoard.h"

@interface PuzzleViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *boardView;
@property (strong, nonatomic) PuzzleBoard *board;

- (IBAction)tileSelected:(UIButton *)sender;
- (IBAction)scrambleTiles:(id)sender;

-(void)arrangeBoardView;

@end
