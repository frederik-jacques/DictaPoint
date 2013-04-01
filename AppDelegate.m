//
//  AppDelegate.m
//  DictaPoint
//
//  Created by Frederik Jacques on 20/03/13.
//  Copyright (c) 2013 thenerd. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    
    // 1. Create the master View Controller
    self.masterViewController = [[MasterViewController alloc] initWithNibName:@"MasterViewController" bundle:nil];
    
    // 2. Add the view controller to the Window's content view
    [self.window.contentView addSubview:self.masterViewController.view];
    self.masterViewController.view.frame = ((NSView*)self.window.contentView).bounds;

}

- (IBAction)openFile:(id)sender {
    NSLog(@"[AppDelegate] Open panel");
    NSOpenPanel *panel = [NSOpenPanel openPanel];
    panel.canChooseDirectories = YES;
    panel.canChooseFiles = YES;

    [panel beginSheetModalForWindow:self.window completionHandler:^(NSInteger result) {
        NSLog(@"[AppDelegate] Got files");
        
        NSURL *fileURL = [panel.URLs lastObject];
        self.masterViewController.urlToLoad = fileURL;
    }];

    
}
@end
