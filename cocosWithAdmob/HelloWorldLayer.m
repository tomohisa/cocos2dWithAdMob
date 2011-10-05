//
//  HelloWorldLayer.m
//  cocosWithAdmob
//
//  Created by Tomohisa Takaoka on 10/5/11.
//  Copyright __MyCompanyName__ 2011. All rights reserved.
//


// Import the interfaces
#import "HelloWorldLayer.h"
#import "AppDelegate.h"
// HelloWorldLayer implementation
@implementation HelloWorldLayer

+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	HelloWorldLayer *layer = [HelloWorldLayer node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

// on "init" you need to initialize your instance
-(id) init
{
	// always call "super" init
	// Apple recommends to re-assign "self" with the "super" return value
	if( (self=[super init])) {
		
		// ask director the the window size
		CGSize size = [[CCDirector sharedDirector] winSize];
        
        //make on/off button
        CCMenuItemLabel* menu1 = [CCMenuItemLabel itemWithLabel:[CCLabelTTF labelWithString:@"AD-ON-OFF" fontName:@"Marker Felt" fontSize:64] block:^(id sender){ if ([AppDelegate sharedDelegate].isAdShowing){[[AppDelegate sharedDelegate] turnOffAds];}else{[[AppDelegate sharedDelegate] turnOnAds];}; }];
        menu1.position = ccp( size.width /2 , size.height/2 );
        CCMenu* menu = [CCMenu menuWithItems:menu1, nil];
        menu.position = ccp(0, 0);
        [self addChild:menu];
	}
	return self;
}

// on "dealloc" you need to release all your retained objects
- (void) dealloc
{
	// in case you have something to dealloc, do it in this method
	// in this particular example nothing needs to be released.
	// cocos2d will automatically release all the children (Label)
	
	// don't forget to call "super dealloc"
	[super dealloc];
}
@end
