//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    /* WORK HERE */
    NSInteger num = [number integerValue] * 2;
    return [NSNumber numberWithInt:num];
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    /* NSMutableArray *mutableArrayofNumbersBetweenNumber = [[NSMutableArray alloc] init]; */

    return @[];
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    /* WORK HERE */
    NSMutableArray *mutableArrayOfNumbers = [arrayOfNumbers mutableCopy];
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES];
    [mutableArrayOfNumbers sortUsingDescriptors:@[sortDescriptor]];
    return [mutableArrayOfNumbers[0] integerValue];
    return 0;
}

@end
