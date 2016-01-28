//
//  ToucheableScrollView.m
//  Pods
//
//  Created by Giuseppe Nucifora on 28/01/16.
//
//

#import "ToucheableScrollView.h"

@implementation ToucheableScrollView

- (void) touchesEnded: (NSSet *) touches withEvent: (UIEvent *) event 
{	
	// If not dragging, send event to next responder
	if (!self.dragging) {
		if ([self.nextResponder respondsToSelector:@selector(touchesEnded:withEvent:)]) {
			[self.nextResponder touchesEnded: touches withEvent:event];
		}
		if ([self.nextResponder.nextResponder respondsToSelector:@selector(touchesEnded:withEvent:)]) {
			[self.nextResponder.nextResponder touchesEnded: touches withEvent:event];
		}
		if ([self.nextResponder.nextResponder.nextResponder respondsToSelector:@selector(touchesEnded:withEvent:)]) {
			[self.nextResponder.nextResponder.nextResponder touchesEnded: touches withEvent:event];
			
		}
	}
	else {
		[super touchesEnded: touches withEvent: event];
	}
	
}
@end



