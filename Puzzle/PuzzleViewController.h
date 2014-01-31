//
//  PuzzleViewController.h
//  Puzzle
//
//  Created by Matthew Steven Pessa on 1/31/14.
//  Copyright (c) 2014 Matthew Steven Pessa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PuzzleViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *boardView;

- (IBAction)tileSelected:(UIButton *)sender;
- (IBAction)scrambleTiles:(id)sender;

-(id)arrangeBoardView;
-(int)getTileAtRow:(int)row Column:(int)col;

@end
