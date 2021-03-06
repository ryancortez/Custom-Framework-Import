//
//  ViewController.m
//  Pet Store
//
//  Created by Ryan Cortez on 7/6/16.
//  Copyright © 2016 Ryan Cortez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Create a custom stepperView and place it in the center of the main view
    StepperView *stepperView = [[StepperView alloc]initWithFrame:CGRectMake(0, 0, 200, 50)];
    stepperView.delegate = self;
    stepperView.minimumStepperValue = 0.0;
    stepperView.maximumStepperValue = 10.0;
    stepperView.leftButtonRoundedCorner = 20.0;
    stepperView.rightButtonRoundedCorner = 20.0;
    stepperView.center = self.view.center;
    [self.view addSubview:stepperView];

}

- (void)stepperViewCurrentCount:(int) count {
    NSLog(@"%d", count);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
