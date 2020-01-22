//
//  JBTaskController.h
//  Tasks
//
//  Created by Jon Bash on 2020-01-22.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

// using class in another class
// 1. forward class declaration - builds faster, helps when files reference each other
// 2. import the class (can lead to weird issues with classes importing each other, performance, etc)
@class JBTask; // import class in .m file

// encapsulation = protect our data
@interface JBTaskController : NSObject

// public properties
@property (readonly, nonatomic) NSArray *tasks;

// public methods

- (void)addTask:(JBTask *)task;
- (void)removeTask:(JBTask *)task;

@end
