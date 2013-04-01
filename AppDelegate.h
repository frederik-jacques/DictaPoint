//
//  AppDelegate.h
//  DictaPoint
//
//  Created by Frederik Jacques on 20/03/13.
//  Copyright (c) 2013 thenerd. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "MasterViewController.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (nonatomic,strong) IBOutlet MasterViewController *masterViewController;
- (IBAction)openFile:(id)sender;



@end
