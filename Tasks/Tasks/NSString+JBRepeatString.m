//
//  NSString+JBRepeatString.m
//  Tasks
//
//  Created by Jon Bash on 2020-01-22.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "NSString+JBRepeatString.h"

@implementation NSString (JBRepeatString)

- (NSString *)jb_repeatString
{
    return [NSString stringWithFormat:@"%@%@%@", self, self, self];
}

@end
