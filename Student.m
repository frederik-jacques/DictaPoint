//
//  Student.m
//  DictaPoint
//
//  Created by Frederik Jacques on 20/03/13.
//  Copyright (c) 2013 thenerd. All rights reserved.
//

#import "Student.h"

@implementation Student

- (id)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        self.name = name;
    }
    return self;
}

@end
