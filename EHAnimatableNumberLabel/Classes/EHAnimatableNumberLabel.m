//
//  EHAnimatableNumberLabel.m
//  EHAnimatableNumberLabel
//
//  Created by Hani Ibrahim on 19/7/14.
//  Copyright (c) 2014 Hani Ibrahim. All rights reserved.
//

#import "EHAnimatableNumberLabel.h"

@interface EHAnimatableNumberLabel ()
@property (nonatomic) long double currentValue;
@property (nonatomic) long double valueTarget;
@property (nonatomic, strong) NSTimer *valueTimer;
@end

@implementation EHAnimatableNumberLabel

/**
 *	@method setValue:
 *	@brief Set the value of the Label with the new value by animating from the old value to the new one
 */
- (void)setValue:(long double)value
{
	_valueTarget = value;
	if (self.valueTimer == nil) {
		NSTimeInterval timeInterval = self.valueTimerInterval <= 0? 0.05:self.valueTimerInterval;
		self.valueTimer = [NSTimer scheduledTimerWithTimeInterval:timeInterval target:self selector:@selector(setValueStep:) userInfo:nil repeats:YES];
		self.valueTimer.tolerance = 0.001;
	}
}

/**
 *	@method setValueStep:
 *	@brief called every "valueTimerInterval" to update the Label
 */
- (void)setValueStep:(NSTimer *)timer
{
	// Get New Value
	if (self.valueTarget > self.currentValue) {
		self.currentValue++;
	} else if (self.valueTarget < self.currentValue) {
		self.currentValue--;
	}
	
	// Set Label
	self.text = [NSString stringWithFormat:@"%.Lf",self.currentValue];
	
	// Disable Timer if finished
	if (self.valueTarget == self.currentValue) {
		[self.valueTimer invalidate];
		self.valueTimer = nil;
	}
}

#pragma mark - Dealloc

- (void)dealloc
{
	[self.valueTimer invalidate];
	self.valueTimer = nil;
}

@end
