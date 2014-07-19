//
//  MyScene.m
//  EHAnimatableNumberLabel
//
//  Created by Hani Ibrahim on 19/7/14.
//  Copyright (c) 2014 Hani Ibrahim. All rights reserved.
//

#import "MyScene.h"
#import "EHAnimatableNumberLabel.h"

@interface MyScene ()
@property (nonatomic, strong) EHAnimatableNumberLabel *myLabel;
@end

@implementation MyScene

- (id)initWithSize:(CGSize)size
{
	self = [super initWithSize:size];
	if (self) {
		self.backgroundColor = [SKColor colorWithRed:0.15 green:0.15 blue:0.3 alpha:1.0];
        
        self.myLabel = [EHAnimatableNumberLabel labelNodeWithFontNamed:@"Chalkduster"];
		[self.myLabel setValue:0];
        self.myLabel.fontSize = 30;
        self.myLabel.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
        
        [self addChild:self.myLabel];
	}
    return self;
}

- (void)setScore:(int)score
{
	[self.myLabel setValue:score];
}

@end
