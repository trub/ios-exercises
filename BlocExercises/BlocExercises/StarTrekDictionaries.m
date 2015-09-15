//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    NSString *myFavoriteDrink = characterDictionary[@"favorite drink"];
    return myFavoriteDrink;
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    /* WORK HERE */
    NSMutableArray *mutableFavDrinksArray = [[NSMutableArray alloc] init];
    for (NSInteger i=0; i <charactersArray.count; i++){
        NSString *favoriteDrinks = charactersArray[i][@"favorite drink"];
        [mutableFavDrinksArray addObject:favoriteDrinks];
    }
    return mutableFavDrinksArray;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    NSMutableDictionary *mutableCharacterDictionary = [characterDictionary mutableCopy];
    [mutableCharacterDictionary setObject:@"There are no compacts bewtween lions and men, and wolves and lambs have no concord." forKey:@"quote"];
    return mutableCharacterDictionary;
}
                                                    

@end
