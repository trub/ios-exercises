//
//  MarysAppleHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/8/14.
//
//

#import "MarysAppleHandler.h"

@implementation MarysAppleHandler

- (NSString *) itemMaryCanPurchaseForDollars:(NSInteger)dollars {
    NSString *itemToReturn;
    
    if (dollars == 4) {
        itemToReturn = (@"get out of my store");
    }
    else if (dollars == 5)  {
        itemToReturn = (@"have some gum");
    }
    
    else if (dollars == 6)  {
        itemToReturn = (@"have an apple");
    }
    else if (dollars == 1000)  {
        itemToReturn = (@"have an Apple computer");
    }
    else if (dollars == 1000000000)  {
        itemToReturn = (@"have The Big Apple");
    }
    else {
        itemToReturn = @"get out of my store";
    }

    /* WORK HERE */
    
    NSLog(@"For $%ld, Mary can: %@", (long)dollars, itemToReturn);
    return itemToReturn;
}
/*
 - (void) checkChildHeight:(NSNumber *)childHeight {
 NSInteger minimumHeight = 120;
 
 NSString *message = (childHeight >= minimumHeight) ? @"Enjoy the ride" : @"Take a Hike";
 
 NSLog(@"%@", message);
 }
 */

- (NSUInteger) dollarCostForAppleFlavoredVodka {
    /* WORK HERE */

//    NSUInteger cost = 24;
//    
//    if (self.getsDiscount) {
//        cost *= .75;
//    }
//    
//    return cost;
    NSUInteger cost = 24;
    cost = self.getsDiscount ? cost *= .75 : cost;
    return cost;
    
    
}

@end
