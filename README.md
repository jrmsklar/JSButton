JSButton
===============

**A subclass of `UIButton` that includes a method that takes a block and executes it on a given UIControlEvent**

`JSButton` is a subclass of `UIButton` that makes it much simpler and cleaner to perform trivial tasks upon the tap of a button. `JSButton` eliminates the need to create selectors for responding to button events.

## Usage

``` objective-c

JSButton *button = [[JSButton alloc]initWithFrame:CGRectMake(0, 0, 100, 30)];
[button setTitle:@"A Button" forState:UIControlStateNormal];

[button performBlock:^(JSButton *sender) {
    NSLog(@"Some trivial code for touching up inside on %@. For example...", sender.titleLabel.text);
    [self.navigationController popViewControllerAnimated:YES];
} forEvents:UIControlEventTouchUpInside];
```

A `JSButton` is instantiated, and a block is passed to it to be executed on `UIControlEventTouchUpInside`.

## Demo

Build and run the JSButtonDemo project in Xcode to see a full demo of `JSButton`.

## Requirements

`JSButton` requres the QuartzCore framework.