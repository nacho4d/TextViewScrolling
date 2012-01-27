//
//  ScrollViewDelegate.m
//  TextViewScrolling
//
//  Created by Guillermo Enriquez on 1/27/12.
//  Copyright (c) 2012 Nacho4d. All rights reserved.
//

#import "ScrollViewDelegate.h"

@implementation ScrollViewDelegate

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
	if (scrollView.isDecelerating) {
		NSLog(@" ... restarting");
	} else {
		NSLog(@"Scroll will begin");
	}
}

- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
	if (decelerate) {
	} else {
		NSLog(@"Scroll did end (Dragging)");
	}
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
	NSLog(@"Scroll did end (Decelerating)");
}

@end

@implementation BetterScrollViewDelegate

- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset
{
	NSLog(@"will end dragging: velocity: %f", velocity.y);
}

@end