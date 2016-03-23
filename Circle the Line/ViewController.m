//
//  ViewController.m
//  Circle the Line
//
//  Created by Cathal on 23/11/2014.
//  Copyright (c) 2014 Cathal. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(IBAction)StartGame:(id)sender{
    
    Logo.hidden = YES;
    TapToStart.hidden = YES;
    StartGame.hidden = YES;
    HighScore.hidden = YES;
    RetryButton.hidden = YES;
    ScoreLabel.hidden = NO;
    
    CircleMovement = [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(CircleMoving) userInfo:nil repeats:YES];
    LeftCircle.image = [UIImage imageNamed:@"CTLgreencircleleft.png"];
    RightCircle.image = [UIImage imageNamed:@"CTLgreencircleright.png"];
    
}

-(void)GameOver{
    
    [CircleMovement invalidate];
    
    Logo.hidden = NO;
    RetryButton.hidden = NO;
    ScoreLabel.hidden = YES;
    
    LeftCircle.image = [UIImage imageNamed:@"CTLredcircleleft.png"];
    RightCircle.image = [UIImage imageNamed:@"CTLredcircleright.png"];
    
}

-(void)CircleMoving{
    
    LeftCircle.center = CGPointMake(LeftCircle.center.x, LeftCircle.center.y - CircleFlight);
    RightCircle.center = CGPointMake(RightCircle.center.x, RightCircle.center.y - CircleFlight);
    TopBox.center = CGPointMake(TopBox.center.x, TopBox.center.y - CircleFlight);
    BottomBox.center = CGPointMake(BottomBox.center.x, BottomBox.center.y - CircleFlight);
    
    CircleFlight = CircleFlight - 4;
    
    if(CircleFlight < -10){
        
        CircleFlight = -10;
    }
    
    if(CGRectIntersectsRect(TopBox.frame, Line.frame)){
        [self GameOver];
    }
    
    if(CGRectIntersectsRect(BottomBox.frame, Line.frame)){
        [self GameOver];
    }
    
}

-(void)Score{
    
    ScoreValue = ScoreValue + 1;
    ScoreLabel.text = [NSString stringWithFormat:@"%i", ScoreValue];

}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    CircleFlight = 20;
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    RetryButton.hidden = YES;
    ScoreLabel.hidden = YES;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
