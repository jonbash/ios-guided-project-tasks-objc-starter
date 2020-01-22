//
//  JBTaskController.m
//  Tasks
//
//  Created by Jon Bash on 2020-01-22.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "JBTaskController.h"

@interface JBTaskController() {

}

@property (nonatomic) NSMutableArray *internalTasks;

@end

@implementation JBTaskController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _internalTasks = [[NSMutableArray alloc] init];
    }
    return self;
}

// computed property for tasks (external / 'public')
- (NSArray *)tasks
{
    return [self.internalTasks copy]; // immutable NSArray *
}

- (void)addTask:(JBTask *)task
{
    [self.internalTasks addObject:task];
}

- (void)removeTask:(JBTask *)task
{
    // id is equivalent to AnyObject in swift
    // nonnull = not optional, not nil
    [self.internalTasks removeObject:task];
}

@end
