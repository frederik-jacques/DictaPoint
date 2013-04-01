//
//  MasterViewController.h
//  DictaPoint
//
//  Created by Frederik Jacques on 20/03/13.
//  Copyright (c) 2013 thenerd. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "CHCSVParser.h"

@interface MasterViewController : NSViewController <NSSpeechRecognizerDelegate, CHCSVParserDelegate>

@property (nonatomic, strong) NSMutableArray *students;
@property (nonatomic, strong) NSSpeechRecognizer *speech;
@property (nonatomic, strong) NSURL *urlToLoad;

@property (weak) IBOutlet NSTableView *tableView;

- (IBAction)export:(id)sender;

@end
