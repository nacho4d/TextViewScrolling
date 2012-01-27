//
//  NAViewController.m
//  TextViewScrolling
//
//  Created by Guillermo Enriquez on 1/27/12.
//  Copyright (c) 2012 Nacho4d. All rights reserved.
//

#import "NAViewController.h"
#import "ScrollViewDelegate.h"

@interface NAViewController ()
@property (nonatomic, retain) IBOutlet UITextView *textView;
@property (nonatomic, retain) IBOutlet UITextView *textView1;
@property (nonatomic, retain) ScrollViewDelegate *delegate;
@property (nonatomic, retain) BetterScrollViewDelegate *betterDelegate;
@end

@implementation NAViewController
@synthesize textView;
@synthesize textView1;
@synthesize delegate;
@synthesize betterDelegate;

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	delegate = [[ScrollViewDelegate alloc] init];
	textView.delegate = delegate;
	textView.editable = NO;
	
	betterDelegate = [[BetterScrollViewDelegate alloc] init];
	textView1.delegate = betterDelegate;
	textView1.editable = NO;
}
- (void)dealloc{
	self.textView = nil;
	self.textView1 = nil;
	self.delegate  = nil;
	self.betterDelegate = nil;
}

@end
