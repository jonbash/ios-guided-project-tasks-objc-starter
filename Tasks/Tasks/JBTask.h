//
//  JBTask.h
//  Tasks
//
//  Created by Jon Bash on 2020-01-22.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JBTask : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *notes;
@property (nonatomic) NSDate *dueDate;

- (instancetype)initWithName:(NSString *)name
                       notes:(NSString *)notes
                     dueDate:(NSDate *)dueDate;

/* --PROPERTY ATTRIBUTES
 in parentheses after `@property`

 ----

 nonatomic -- recommended (slightly faster, override properties)
 atomic* -- more thread-safe; not enough to guarantee thread safety

 readonly - getter only
 readwrite* - getter/setter

    getter =   (hidden -> getter=isHidden)
    setter =

 copy - use for NSString, NSArray, other mutable collections
 assign* - default for primitive (double, float, int)

 strong* - implies ownership of memory
 weak - will deallocate if no other strong references

 class - class property, but it has no backing variable (static variable)
    search for Andrew Madsen's blog post about this

 retain
 unsafe_unretained

    won't be dealing with these

 ----

 * = default

 */

@end
