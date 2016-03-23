//
//  ViewController.h
//  Circle the Line
//
//  Created by Cathal on 23/11/2014.
//  Copyright (c) 2014 Cathal. All rights reserved.
//

#import <UIKit/UIKit.h>


int CircleFlight;
int ScoreValue;


@interface ViewController : UIViewController
{
    
    IBOutlet UIImageView *Logo;
    IBOutlet UIImageView *TapToStart;
    IBOutlet UIImageView *Line;
    IBOutlet UIImageView *LeftCircle;
    IBOutlet UIImageView *RightCircle;
    IBOutlet UIImageView *HighScore;
    IBOutlet UIImageView *TopBox;
    IBOutlet UIImageView *BottomBox;
    IBOutlet UIButton *StartGame;
    IBOutlet UIButton *RetryButton;
    IBOutlet UILabel *ScoreLabel;
    
    NSTimer *CircleMovement;
    
}

-(IBAction)StartGame:(id)sender;
-(void)CircleMoving;


@end

