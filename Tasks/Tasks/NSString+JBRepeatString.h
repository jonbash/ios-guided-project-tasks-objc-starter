//
//  NSString+JBRepeatString.h
//  Tasks
//
//  Created by Jon Bash on 2020-01-22.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

// category = extension in swift
// we can add new methods to an existing class

@interface NSString (JBRepeatString)

/// repeat a string 3 times
- (NSString *)jb_repeatString;

@end
