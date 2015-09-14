//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    /* WORK HERE: testThatStringsAreTurnedIntoArraysProperly */
    NSArray *charactersArray = [characterString componentsSeparatedByString:@";"];
    return charactersArray;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE: testThatArraysAreTurnedIntoStringsProperly */
    NSString *charactersString = [characterArray componentsJoinedByString:@";"];
    return charactersString;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE:
     testThatAlphabetizationWorks   */
    NSMutableArray *myMutableCharacterArray = [characterArray mutableCopy];
    
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    [myMutableCharacterArray sortUsingDescriptors:@[sortDescriptor]];
    return myMutableCharacterArray;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    /* WORK HERE:
     testThatCharacterArrayDetectsWorfIfPresent */
    return NO;
}

@end
