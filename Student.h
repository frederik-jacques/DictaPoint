//
//  Student.h
//  DictaPoint
//
//  Created by Frederik Jacques on 20/03/13.
//  Copyright (c) 2013 thenerd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic) int point;

- (id)initWithName:(NSString *)name;

@end
