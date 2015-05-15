//
//  ViewController.m
//  TikTakTo
//
//  Created by Alex Santorineos on 5/14/15.
//  Copyright (c) 2015 madApperz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

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




@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.whichPlayerLabel.text = @"player1";


    self.labels = @[self.labelOne, self.labelTwo,self.labelThree, self.labelFour,self.labelFive, self.labelSix, self.labelSeven, self.labelEight, self.labelNine];

    //0 is player1. 1 is player 2
    self.currentPlayer = 0;
}

- (void)updateLabel:(UILabel *)currentLabel{

    if ([currentLabel.text isEqualToString:@""]) {


        if (self.currentPlayer == 0) {
         currentLabel.text = @"x";
            self.currentPlayer = 1;
        }
        else if (self.currentPlayer == 1){

        currentLabel.text = @"o";
            self.currentPlayer = 0;
        }

    }



    if ([self.labelOne.text isEqual: @"x"] && [self.labelTwo.text isEqual: @"x"] &&  [self.labelThree.text  isEqual: @"x"]) {

            NSLog(@"Player One Won!");
        
    }

    if ([self.labelFour.text isEqual: @"x"] && [self.labelFive.text isEqual: @"x"] &&  [self.labelSix.text  isEqual: @"x"]) {

        NSLog(@"Player One Won!");

    }

    if ([self.labelSeven.text isEqual: @"x"] && [self.labelEight.text isEqual: @"x"] &&  [self.labelNine.text  isEqual: @"x"]) {

        NSLog(@"Player One Won!");

    }

    if ([self.labelOne.text isEqual: @"x"] && [self.labelFour.text isEqual: @"x"] &&  [self.labelSeven.text  isEqual: @"x"]) {

        NSLog(@"Player One Won!");

    }

    if ([self.labelTwo.text isEqual: @"x"] && [self.labelFive.text isEqual: @"x"] &&  [self.labelEight.text  isEqual: @"x"]) {

        NSLog(@"Player One Won!");

    }

    if ([self.labelThree.text isEqual: @"x"] && [self.labelSix.text isEqual: @"x"] &&  [self.labelNine.text  isEqual: @"x"]) {

        NSLog(@"Player One Won!");

    }

    if ([self.labelOne.text isEqual: @"x"] && [self.labelFive.text isEqual: @"x"] &&  [self.labelNine.text  isEqual: @"x"]) {

        NSLog(@"Player One Won!");

    }

    if ([self.labelThree.text isEqual: @"x"] && [self.labelFive.text isEqual: @"x"] &&  [self.labelSeven.text  isEqual: @"x"]) {

        NSLog(@"Player One Won!");

    }


    if ([self.labelOne.text isEqual: @"o"] && [self.labelTwo.text isEqual: @"o"] &&  [self.labelThree.text  isEqual: @"o"]) {

        NSLog(@"Player Two Won!");

    }

    if ([self.labelFour.text isEqual: @"o"] && [self.labelFive.text isEqual: @"o"] &&  [self.labelSix.text  isEqual: @"o"]) {

        NSLog(@"Player Two Won!");

    }

    if ([self.labelSeven.text isEqual: @"o"] && [self.labelEight.text isEqual: @"o"] &&  [self.labelNine.text  isEqual: @"o"]) {

        NSLog(@"Player Two Won!");

    }

    if ([self.labelOne.text isEqual: @"o"] && [self.labelFour.text isEqual: @"o"] &&  [self.labelSeven.text  isEqual: @"o"]) {

        NSLog(@"Player Two Won!");

    }

    if ([self.labelTwo.text isEqual: @"o"] && [self.labelFive.text isEqual: @"o"] &&  [self.labelEight.text  isEqual: @"o"]) {

        NSLog(@"Player Two Won!");

    }

    if ([self.labelThree.text isEqual: @"o"] && [self.labelSix.text isEqual: @"o"] &&  [self.labelNine.text  isEqual: @"o"]) {

        NSLog(@"Player Two Won!");

    }

    if ([self.labelOne.text isEqual: @"o"] && [self.labelFive.text isEqual: @"o"] &&  [self.labelNine.text  isEqual: @"o"]) {

        NSLog(@"Player Two Won!");

    }

    if ([self.labelThree.text isEqual: @"o"] && [self.labelFive.text isEqual: @"o"] &&  [self.labelSeven.text  isEqual: @"o"]) {
        
        NSLog(@"Player Two Won!");
        
    }



        }





- (IBAction)onGesture:(UITapGestureRecognizer *)sender {

// this variable captures the tap gesture
    CGPoint point = [sender locationInView:self.view];
    for (UILabel *label in self.labels) {

        if (CGRectContainsPoint(label.frame, point)) {
            NSLog(@"tag ==  %li",(long)label.tag);

            [self updateLabel:label];

            
        }

    }





//    if (CGRectContainsPoint(self.labelOne.frame, point)) {
//        NSLog(@"labelOne");
//
//        [self updateLabel:self.labelOne];
//
//
//        }
//
//    if (CGRectContainsPoint(self.labelTwo.frame, point)) {
//        NSLog(@"labelTwo");
//
//        [self updateLabel:self.labelTwo];
//
//
//    }
//
//    if (CGRectContainsPoint(self.labelThree.frame, point)) {
//        NSLog(@"labelThree");
//        [self updateLabel:self.labelTwo];
//
//    }
//
//    if (CGRectContainsPoint(self.labelFour.frame, point)) {
//        NSLog(@"label4");
//        [self updateLabel:self.labelTwo];
//
//    }
//
//    if (CGRectContainsPoint(self.labelFive.frame, point)) {
//        NSLog(@"label5");
//        [self updateLabel:self.labelTwo];
//
//    }
//
//    if (CGRectContainsPoint(self.labelSix.frame, point)) {
//        NSLog(@"label6");
//        [self updateLabel:self.labelTwo];
//
//    }
//
//    if (CGRectContainsPoint(self.labelSeven.frame, point)) {
//        NSLog(@"label7");
//        [self updateLabel:self.labelTwo];
//
//    }
//
//    if (CGRectContainsPoint(self.labelEight.frame, point)) {
//        NSLog(@"label8");
//        [self updateLabel:self.labelTwo];
//
//    }
//
//    if (CGRectContainsPoint(self.labelNine.frame, point)) {
//        NSLog(@"label9");
//        [self updateLabel:self.labelTwo];
//
//    }

}




@end
