//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {

    NSString *favoriteStringCheese = [NSString stringWithFormat: @"My favorite cheese is %@.", cheeseName];
    return favoriteStringCheese;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    if ([[cheeseName lowercaseString] hasSuffix:@" cheese"]) {
        /* WORK HERE, ASSUMING `cheeseName` ENDS WITH " cheese" */
        
        /* examples
         ------------------------------------------
        NSString *plutoStatement = @"Pluto is a planet in our solar system.";
        NSRange planetRange = [plutoStatement rangeOfString:@"planet"];
        NSLog(@"planetRange starting point: %lu", (unsigned long) planetRange.location);
        NSLog(@"planetRange length: %lu", (unsigned long) planetRange.length);
        return YES; 
         ------------------------------------------
         NSString *plutoStatement = @"Pluto is a planet in our solar system.";
         NSRange planetRange = [plutoStatement rangeOfString:@"planET" options:NSCaseInsensitiveSearch];
         NSLog(@"Planet Range is: %@", NSStringFromRange(planetRange));
         return YES;
         */
        
        /*  NSRange cheeseNameRange = [cheeseName rangeOfString:@"Cheese" options:NSCaseInsensitiveSearch];
         NSLog(@"%@", NSStringFromRange(cheeseNameRange));
         return cheeseNameRange; */
        
        NSRange cheeseNameRange = [[cheeseName lowercaseString] rangeOfString:@" cheese"];
        NSString *noSuffixCheeseName = [cheeseName stringByReplacingCharactersInRange:cheeseNameRange withString:@""];
        return noSuffixCheeseName;
       
        
    } else {
        /* WORK HERE, ASSUMING `cheeseName` DOES NOT END WITH " cheese" */
        return cheeseName;
    }

    /*
     (You will learn more about if/else statements in a later checkpoint.)
     */

    return cheeseName;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    if (cheeseCount == 1) {
        /* WORK HERE, ASSUMING THERE IS 1 CHEESE */
        NSString *numberOfCheesesString =  @"1 cheese";
        return numberOfCheesesString;
    } else {
        /* WORK HERE, ASSUMING THERE ARE 2+ CHEESES */
        NSString *numberOfCheesesString =  [NSString stringWithFormat:@"%lu cheeses", (unsigned long)cheeseCount];
        return numberOfCheesesString;
        

        
    }
    
    /*
     (You will learn more about if/else statements in a later checkpoint.)
     */
    
    return nil;
}

@end
