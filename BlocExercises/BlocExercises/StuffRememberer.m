//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"

@implementation StuffRememberer

- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {
    /* WORK HERE */
    self.arraySavedForLater = arrayToRemember;

}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy {
    /* WORK HERE */
    self.arrayCopiedForLater = [arrayToCopy copy];
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    /* WORK HERE */
    self.savedCgfloat = floatToRemember;

}

- (NSMutableArray *) arrayYouShouldRemember {
    /* WORK HERE */
    return self.arraySavedForLater;
}

- (NSMutableArray *) arrayYouShouldCopy {
    /* WORK HERE */
    return self.arrayCopiedForLater;
}

- (CGFloat) floatYouShouldRemember {
    /* WORK HERE */
    return self.savedCgfloat;

}

@end