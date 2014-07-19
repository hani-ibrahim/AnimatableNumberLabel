//
//  ViewController.m
//  EHAnimatableNumberLabel
//
//  Created by Hani Ibrahim on 19/7/14.
//  Copyright (c) 2014 Hani Ibrahim. All rights reserved.
//

#import "ViewController.h"
#import "MyScene.h"

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Configure the view.
    SKView * skView = (SKView *)self.view;
    skView.showsFPS = YES;
    skView.showsNodeCount = YES;
    
    // Create and configure the scene.
    SKScene * scene = [MyScene sceneWithSize:skView.bounds.size];
    scene.scaleMode = SKSceneScaleModeAspectFill;
    
    // Present the scene.
    [skView presentScene:scene];
	
	// Add Radius to buttons
	for (UIButton *button in self.buttons) {
		button.layer.cornerRadius = 10;
		[self.view bringSubviewToFront:button];
	}
}

- (IBAction)buttonClicked:(UIButton *)sender
{
	SKView * skView = (SKView *)self.view;
	MyScene *scene = (MyScene *)skView.scene;
	[scene setScore:[[sender titleForState:UIControlStateNormal] intValue]];
}

@end
