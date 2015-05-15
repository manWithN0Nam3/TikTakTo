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
