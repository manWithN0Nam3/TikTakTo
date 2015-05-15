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



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onGesture:(UITapGestureRecognizer *)sender {

// this variable captures the tap gesture
    CGPoint point = [sender locationInView:self.view];

    if (CGRectContainsPoint(self.labelOne.frame, point)) {
        NSLog(@"labelOne");
    }
    if (CGRectContainsPoint(self.labelTwo.frame, point)) {
        NSLog(@"labelTwo");
    }

    if (CGRectContainsPoint(self.labelThree.frame, point)) {
        NSLog(@"labelThree");
    }

    if (CGRectContainsPoint(self.labelFour.frame, point)) {
        NSLog(@"label4");
    }

    if (CGRectContainsPoint(self.labelFive.frame, point)) {
        NSLog(@"label5");
    }

    if (CGRectContainsPoint(self.labelSix.frame, point)) {
        NSLog(@"label6");
    }

    if (CGRectContainsPoint(self.labelSeven.frame, point)) {
        NSLog(@"label7");
    }

    if (CGRectContainsPoint(self.labelEight.frame, point)) {
        NSLog(@"label8");
    }

    if (CGRectContainsPoint(self.labelNine.frame, point)) {
        NSLog(@"label9");
    }

}

@end
