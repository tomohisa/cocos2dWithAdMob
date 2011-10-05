//
//  AppDelegate.h
//  cocosWithAdmob
//
//  Created by Tomohisa Takaoka on 10/5/11.
//  Copyright __MyCompanyName__ 2011. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GADBannerViewDelegate.h"

@class RootViewController;

@interface AppDelegate : NSObject <UIApplicationDelegate, GADBannerViewDelegate> {
	UIWindow			*window;
	RootViewController	*viewController;
}

@property (nonatomic, retain) UIWindow *window;
+(AppDelegate*) sharedDelegate;
-(void) turnOnAds;
-(void) turnOffAds;
@property (nonatomic, readonly) BOOL isAdShowing;

@end
