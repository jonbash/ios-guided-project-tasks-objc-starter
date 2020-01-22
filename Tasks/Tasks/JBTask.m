//
//  JBTask.m
//  Tasks
//
//  Created by Jon Bash on 2020-01-22.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "JBTask.h"

// Class extension - used for private properties, methods, instance vars
@interface JBTask() {
    // private instance variables
    NSString *_name;
}

// private properties

// private methods

@end

@implementation JBTask

- (instancetype)initWithName:(NSString *)name
                       notes:(NSString *)notes
                     dueDate:(NSDate *)dueDate
{
    if (self = [super init]) {
        _name = name;
        _notes = notes;
        _dueDate = dueDate;
        NSLog(@"initialized task %@", name);
    }
    return self;
}

- (void)dealloc
{
    // use _name instead of self.name to prevent side effects
    NSLog(@"deallocating task %@", _name);
}

-(void)setName:(NSString *)name
{
    _name = name;
}

- (NSString *)name
{
    return _name;
}

@end
