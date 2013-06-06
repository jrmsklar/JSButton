//
//  JSBViewController.m
//  JSButtonDemo
//
//  Created by Josh Sklar on 4/9/13.
//  Copyright (c) 2013 Josh Sklar. All rights reserved.
//

#import "JSViewController.h"
#import "JSButton.h"

static const CGFloat kLabelHeight = 70.;

static const CGFloat kButtonHeight = 30.;
static const CGFloat kButtonWidth = 100.;

@interface JSViewController ()

@end

@implementation JSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    /* instruction label */
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0., 0., self.view.frame.size.width, kLabelHeight)];
    [label setNumberOfLines:2];
    [label setTextAlignment:NSTextAlignmentCenter];
    [label setText:@"Tap one of the buttons below and see the console output"];
    [self.view addSubview:label];
    
	/* couple different examples of touch events */
    
    JSButton *buttonOne = [[JSButton alloc]initWithFrame:CGRectMake((self.view.frame.size.width - kButtonWidth)/2, kLabelHeight, kButtonWidth, kButtonHeight)];
    [buttonOne setTitle:@"Buton One" forState:UIControlStateNormal];
    
    [buttonOne performBlock:^(JSButton *sender) {
        NSLog(@"Some trivial code for touching up inside on %@", sender.titleLabel.text);
    } forEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:buttonOne];
    
    JSButton *buttonTwo = [[JSButton alloc]initWithFrame:CGRectMake((self.view.frame.size.width - kButtonWidth)/2, kLabelHeight + kButtonHeight + 10, kButtonWidth, kButtonHeight)];
    [buttonTwo setTitle:@"Button Two" forState:UIControlStateNormal];
    
    [buttonTwo performBlock:^(JSButton *sender) {
        NSLog(@"Some trivial code for touching down on %@", sender.titleLabel.text);
    } forEvents:UIControlEventTouchDown];
    
    [self.view addSubview:buttonTwo];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
