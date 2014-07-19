//
//  EHAnimatableNumberLabel.h
//  EHAnimatableNumberLabel
//
//  Created by Hani Ibrahim on 19/7/14.
//  Copyright (c) 2014 Hani Ibrahim. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface EHAnimatableNumberLabel : SKLabelNode

/**
 *	@property valueTimerInterval
 *	@brief The time interval used to update the Label from the old value to the new value
 *	@note defualt is 0.05
 */
@property (nonatomic) NSTimeInterval valueTimerInterval;

/**
 *	@method setValue:
 *	@brief Set the value of the Label with the new value by animating from the old value to the new one
 */
- (void)setValue:(long double)value;

@end
