//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    
    while (otherNumber < number) {
        NSLog(@"otherNumber is now: %ld", (long) otherNumber);
        otherNumber++;
    }

    return @"";
           
           
    
    
    
}

@end
