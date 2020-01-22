//
//  TasksTests.m
//  TasksTests
//
//  Created by Paul Solt on 10/9/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "../Tasks/JBTask.h"  // #import bug? may need relative path to a Model group
#import "../Tasks/NSString+JBRepeatString.h"
//#import "JBTask.h"

@interface TasksTests : XCTestCase

@end

@implementation TasksTests

// NOTE: For any file you want to use
// 1. Add the .m file to your unit test target
// 2. Import the file above
// 3. If you use a framework like MapKit, you may need to add the framework to your main target

- (void)testCode {
	printf("Use an Objective-C unit test like a Playground scratch pad\n");
	
	// Create a task model object
    JBTask *task = [[JBTask alloc] initWithName:@"Walk the dog"
                                          notes:@"doggie needs to get outside"
                                        dueDate:[NSDate now]];
    NSLog(@"Createtd a new task: %@", task);

    task = nil; // arc will clean up memory and run dealloc
	
	// Try creating other objects or calling methods to verify you understand
	// Objective-C code.

    // example of using category
    NSString *thingy = @"this is a string!\n";
    NSLog(@"%@", [thingy jb_repeatString]);
}

@end
