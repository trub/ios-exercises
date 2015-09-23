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
     /*converts any atomic data type to a number */
    return @(num);
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSMutableArray *answer = [[NSMutableArray alloc] init];
    /* keep list of the numbers, put each number into the list */
    NSInteger lowNum = MIN(number,otherNumber);
    NSInteger highNum = MAX(number, otherNumber);
    /* also can use boolean statement:
     NSInteger lowNum = number < otherNumber ? number : otherNumber;
     NSInteger highNum = number > otherNumber ? number : otherNumber;
     */
    /* add high & low number to ensure loop can't be tricked */
    for(NSInteger i = lowNum; i <= highNum; i++){
        [answer addObject: @(i)];
    };
    return answer;
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
