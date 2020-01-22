//
//  JBTaskController.m
//  Tasks
//
//  Created by Jon Bash on 2020-01-22.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "JBTaskController.h"
#import "JBTask.h"

@interface JBTaskController() {

}

@property (nonatomic) NSMutableArray *internalTasks;

- (void)addMockData;

@end

@implementation JBTaskController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _internalTasks = [[NSMutableArray alloc] init];

        // TODO: remove for production (testing only)
        [self addMockData];
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

- (void)addMockData
{
    NSArray *mockTasks = @[
        [[JBTask alloc] initWithName:@"Do a thing"
                               notes:@"heck yeah"
                             dueDate:[NSDate dateWithTimeIntervalSinceNow:86400.0]],
        [[JBTask alloc] initWithName:@"Do a different thing"
                               notes:@"wooooooooot"
                             dueDate:[NSDate dateWithTimeIntervalSinceNow:172800.0]],
        [[JBTask alloc] initWithName:@"Do a really awesome thing"
                               notes:@"huzzah!!!!!"
                             dueDate:[NSDate dateWithTimeIntervalSinceNow:1209600.0]]
    ];

    [self.internalTasks addObjectsFromArray:mockTasks];
}

@end
