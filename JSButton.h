//
//  JSButton.h
//  JSButton
//
//  Created by Josh Sklar on 4/9/13.
//  Copyright (c) 2013 Josh Sklar. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^completionBlock)(id sender);

@interface JSButton : UIButton

- (void)performBlock:(completionBlock)block forEvents:(UIControlEvents)controlEvents;

@end
