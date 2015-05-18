//
//  ViewController.m
//  TikTakTo
//
//  Created by Alex Santorineos on 5/14/15.
//  Copyright (c) 2015 madApperz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIAlertViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *labelOne;
@property (weak, nonatomic) IBOutlet UILabel *labelTwo;
@property (weak, nonatomic) IBOutlet UILabel *labelThree;
@property (weak, nonatomic) IBOutlet UILabel *labelFour;
@property (weak, nonatomic) IBOutlet UILabel *labelFive;
@property (weak, nonatomic) IBOutlet UILabel *labelSix;
@property (weak, nonatomic) IBOutlet UILabel *labelSeven;
@property (weak, nonatomic) IBOutlet UILabel *labelEight;
@property (weak, nonatomic) IBOutlet UILabel *labelNine;
@property (weak, nonatomic) IBOutlet UILabel *whichPlayerLabel;

@property BOOL currentPlayer;
@property NSArray *labels;

@property NSArray *winningLabels;
@property CGPoint startingPoint;

@property NSTimer *timer;
@property int countDownNumber;
@property (weak, nonatomic) IBOutlet UILabel *countDownLabel;


@property (weak, nonatomic) IBOutlet UILabel *timeLabel;

@end



@implementation ViewController

- (IBAction)startGame:(id)sender {

//self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(countDown) userInfo:nil repeats:YES];

}




//-(void)countDown{
//
//
//    self.countDownNumber = self.countDownNumber - 1;
//self.countDownLabel.text = [NSString stringWithFormat:@"%i",self.countDownNumber];
//
//    if (self.countDownNumber == 0) {
//        [self.timer invalidate];
//    }
//
//}
//
//-(void)resetTimer{
//
//    self.countDownNumber = 10;
//    self.countDownLabel.text = [NSString stringWithFormat:@"%i",self.countDownNumber];
//
//}

//#1
- (void)viewDidLoad {
    [super viewDidLoad];
    self.whichPlayerLabel.text = @"x";


    self.labels = @[self.labelOne, self.labelTwo,self.labelThree, self.labelFour,self.labelFive, self.labelSix, self.labelSeven, self.labelEight, self.labelNine];






    self.winningLabels = @[self.labelOne, self.labelTwo, self.labelThree];


    //0 is player1. 1 is player 2
    self.currentPlayer = 0;

    self.startingPoint = self.whichPlayerLabel.center;
//    self.alertView.delegate = self;

    self.countDownNumber = 10;




    NSLog(@"%@",self.timer);


}



//#3
- (void)updateLabel:(UILabel *)cLabel{



    if ([cLabel.text isEqualToString:@""]) {


        if (self.currentPlayer == 0) {
         cLabel.text = @"x";
            self.currentPlayer = 1;
            self.whichPlayerLabel.text = @"o";
            
        }
        else if (self.currentPlayer == 1){

        cLabel.text = @"o";
            self.currentPlayer = 0;
            self.whichPlayerLabel.text = @"x";

        }

    }

    [self whoWon];

}




-(void)alertView:(NSString *)player{

   UIAlertView *alertView = [UIAlertView new];
    alertView.delegate = self;

    alertView.title = player;

    
    [alertView addButtonWithTitle:@"restart"];
    [alertView show];



}
//-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
//
//    if (buttonIndex == 0){
//
//        self.labelOne.text = @"";
//
//
//    }
//
//}
//





//#4

-(void)whoWon{


    if ([self.labelOne.text isEqual: @"x"] && [self.labelTwo.text isEqual: @"x"] &&  [self.labelThree.text  isEqual: @"x"]) {

        NSLog(@"Player One Won!");
        [self alertView:@"Player One Won"];

    }

    if ([self.labelFour.text isEqual: @"x"] && [self.labelFive.text isEqual: @"x"] &&  [self.labelSix.text  isEqual: @"x"]) {

        NSLog(@"Player One Won!");
        [self alertView:@"Player One Won"];

    }

    if ([self.labelSeven.text isEqual: @"x"] && [self.labelEight.text isEqual: @"x"] &&  [self.labelNine.text  isEqual: @"x"]) {

        NSLog(@"Player One Won!");
        [self alertView:@"Player One Won"];

    }

    if ([self.labelOne.text isEqual: @"x"] && [self.labelFour.text isEqual: @"x"] &&  [self.labelSeven.text  isEqual: @"x"]) {

        NSLog(@"Player One Won!");
        [self alertView:@"Player One Won"];

    }

    if ([self.labelTwo.text isEqual: @"x"] && [self.labelFive.text isEqual: @"x"] &&  [self.labelEight.text  isEqual: @"x"]) {

        NSLog(@"Player One Won!");
        [self alertView:@"Player One Won"];

    }

    if ([self.labelThree.text isEqual: @"x"] && [self.labelSix.text isEqual: @"x"] &&  [self.labelNine.text  isEqual: @"x"]) {

        NSLog(@"Player One Won!");
        [self alertView:@"Player One Won"];

    }

    if ([self.labelOne.text isEqual: @"x"] && [self.labelFive.text isEqual: @"x"] &&  [self.labelNine.text  isEqual: @"x"]) {

        NSLog(@"Player One Won!");
        [self alertView:@"Player One Won"];

    }

    if ([self.labelThree.text isEqual: @"x"] && [self.labelFive.text isEqual: @"x"] &&  [self.labelSeven.text  isEqual: @"x"]) {

        NSLog(@"Player One Won!");
        [self alertView:@"Player One Won"];

    }


    if ([self.labelOne.text isEqual: @"o"] && [self.labelTwo.text isEqual: @"o"] &&  [self.labelThree.text  isEqual: @"o"]) {

        NSLog(@"Player Two Won!");
        [self alertView:@"Player Two Won"];

    }

    if ([self.labelFour.text isEqual: @"o"] && [self.labelFive.text isEqual: @"o"] &&  [self.labelSix.text  isEqual: @"o"]) {

        NSLog(@"Player Two Won!");
        [self alertView:@"Player Two Won"];

    }

    if ([self.labelSeven.text isEqual: @"o"] && [self.labelEight.text isEqual: @"o"] &&  [self.labelNine.text  isEqual: @"o"]) {

        NSLog(@"Player Two Won!");
        [self alertView:@"Player Two Won"];

    }

    if ([self.labelOne.text isEqual: @"o"] && [self.labelFour.text isEqual: @"o"] &&  [self.labelSeven.text  isEqual: @"o"]) {

        NSLog(@"Player Two Won!");
        [self alertView:@"Player Two Won"];

    }

    if ([self.labelTwo.text isEqual: @"o"] && [self.labelFive.text isEqual: @"o"] &&  [self.labelEight.text  isEqual: @"o"]) {

        NSLog(@"Player Two Won!");
        [self alertView:@"Player Two Won"];

    }

    if ([self.labelThree.text isEqual: @"o"] && [self.labelSix.text isEqual: @"o"] &&  [self.labelNine.text  isEqual: @"o"]) {

        NSLog(@"Player Two Won!");
        [self alertView:@"Player Two Won"];

    }

    if ([self.labelOne.text isEqual: @"o"] && [self.labelFive.text isEqual: @"o"] &&  [self.labelNine.text  isEqual: @"o"]) {
        
        NSLog(@"Player Two Won!");
        [self alertView:@"Player Two Won"];

    }

    if ([self.labelThree.text isEqual: @"o"] && [self.labelFive.text isEqual: @"o"] &&  [self.labelSeven.text  isEqual: @"o"]) {
        
        NSLog(@"Player Two Won!");
        [self alertView:@"Player Two Won"];

    }


}





//#2
//- (IBAction)onGesture:(UITapGestureRecognizer *)sender {
//
//// this variable captures the tap gesture
//    CGPoint point = [sender locationInView:self.view];
//    for (UILabel *label in self.labels) {
//
//
//
//        //if the tap gesture is in the labels frame
//        if (CGRectContainsPoint(label.frame, point)) {
////            NSLog(@"tag ==  %li",(long)label.tag);
//
//            [self updateLabel:label];
//
//
//        }
//
//    }


- (IBAction)onPanG:(UIPanGestureRecognizer *)sender {
    // this variable captures where the panGesture is taking place on the screen
    CGPoint pointer = [sender locationInView:self.view];
    NSLog(@"%@",NSStringFromCGPoint(pointer));
    self.whichPlayerLabel.center = pointer;

    if(sender.state == UIGestureRecognizerStateBegan){

//self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(countDown) userInfo:nil repeats:YES];

    }

    if (sender.state == UIGestureRecognizerStateEnded) {
        [UIView animateWithDuration:1.0 animations:^{
            self.whichPlayerLabel.center = self.startingPoint;

//            [self.timer invalidate];
//^should be a method

//            [self resetTimer];

        }];
    }


    for (UILabel *label in self.labels) {
        
        
        
                //if the tap gesture is in the labels frame
            if (CGRectContainsPoint(label.frame, pointer)) {
        //            NSLog(@"tag ==  %li",(long)label.tag);
        
                    [self updateLabel:label];
        
        
                }



}

}


@end
