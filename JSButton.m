//
//  JSButton.m
//  JSButton
//
//  Created by Josh Sklar on 4/9/13.
//  Copyright (c) 2013 Josh Sklar. All rights reserved.
//

#import "JSButton.h"
#import <QuartzCore/QuartzCore.h>

@interface JSButton()
{
@private
    completionBlock tappedButtonBlock;
}

@end

@implementation JSButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        self.layer.cornerRadius = 6.;
        self.layer.borderColor = [UIColor blackColor].CGColor;
        self.layer.borderWidth = 1.5;
        [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    }
    return self;
}

- (void)performBlock:(completionBlock)block forEvents:(UIControlEvents)controlEvents;
{
    tappedButtonBlock = block;
    [self addTarget:self action:@selector(didTapButton:) forControlEvents:controlEvents];
}

- (void)didTapButton:(id)sender
{
    tappedButtonBlock(sender);
}

@end
