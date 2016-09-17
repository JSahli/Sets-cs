//
//  SetEquations.h
//  CSpractice_Sets
//
//  Created by Jesse Sahli on 8/17/16.
//  Copyright © 2016 sahlitude. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SetEquations : NSObject

+(NSSet*) findIntersectBetween: (NSSet*) setA andSetB: (NSSet*) setB;
+(NSSet*) findSetDifferenceBetween: (NSSet*) setA andSetB: (NSSet*) setB;
+(BOOL) areDisjointedSets: (NSSet*) setA andSetB: (NSSet*) setB;


@end
