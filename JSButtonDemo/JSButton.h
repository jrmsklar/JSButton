//
//  JSButton.h
//  JSButton
//
//  Created by Josh Sklar on 4/9/13.
//  Copyright (c) 2013 Josh Sklar. All rights reserved.
//

#import <UIKit/UIKit.h>

// JSButton

/*
 JSButton is a subclass of UIButton that contains a handy method that performs
 a block on one of more controlEvents
 */

@class JSButton;

typedef void (^completionBlock)(JSButton *sender);

@interface JSButton : UIButton

- (void)performBlock:(completionBlock)block forEvents:(UIControlEvents)controlEvents;

@end
