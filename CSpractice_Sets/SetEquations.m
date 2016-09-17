//
//  SetEquations.m
//  CSpractice_Sets
//
//  Created by Jesse Sahli on 8/17/16.
//  Copyright © 2016 sahlitude. All rights reserved.
//

#import "SetEquations.h"

@implementation SetEquations


//check if sets are disjointed
+(BOOL)areDisjointedSets: (NSSet*) setA
                 andSetB: (NSSet*) setB {
    
    if ([setA intersectsSet:setB]) {
        return false;
    } else {
        return true;
    }
}


//return the elements of sets that don't intersect
+(NSSet*) findSetDifferenceBetween: (NSSet*) setA
                           andSetB: (NSSet*) setB {
    
    NSSet *differenceSet = [[NSSet alloc]init];
    
    NSPredicate *contains = [NSPredicate predicateWithBlock:^BOOL(id evaluatedObject, NSDictionary *bindings) {
        if ([setB containsObject:evaluatedObject]) {
            return NO;
        } else {
            return YES;
        }
    }];

    differenceSet = [setA filteredSetUsingPredicate:contains];
    NSLog(@"%@", differenceSet);
    
    return differenceSet;
}



//return the intersect of two sets
+(NSSet*) findIntersectBetween: (NSSet*) setA
                       andSetB: (NSSet*) setB {
    
    NSSet *intersectSet = [[NSSet alloc]init];
    
    NSPredicate *contains = [NSPredicate predicateWithBlock:^BOOL(id evaluatedObject, NSDictionary *bindings) {
        if ([setB containsObject:evaluatedObject]) {
            return YES;
        } else {
            return NO;
        }
    }];
    
    intersectSet = [setA filteredSetUsingPredicate:contains];
    NSLog(@"%@", intersectSet);
    
    return intersectSet;

}




@end
