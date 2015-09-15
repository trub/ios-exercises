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
//    NSMutableArray *myMutableCharacterArray = [characterArray mutableCopy];
    
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    return [characterArray sortedArrayUsingDescriptors:@[sortDescriptor]];
    
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    /* WORK HERE:
     testThatCharacterArrayDetectsWorfIfPresent */
//    NSMutableArray *mutantCharacterArray = [characterArray mutableCopy];
    NSPredicate *containsThe = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'worf'"];
    return [characterArray filteredArrayUsingPredicate:containsThe].count  > 0 ;
    
}

@end
