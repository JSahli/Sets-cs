//
//  main.m
//  CSpractice_Sets
//
//  Created by Jesse Sahli on 8/17/16.
//  Copyright © 2016 sahlitude. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SetEquations.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {
      
        NSSet* mySet = [NSSet setWithObjects:@1,@4,@6,@7,@8,@10, nil];
        NSSet* myOtherSet = [NSSet setWithObjects:@3,@5,@6,@8,@9,@10, nil];
        
        [SetEquations findIntersectBetween:mySet andSetB:myOtherSet];
        [SetEquations findSetDifferenceBetween:mySet andSetB:myOtherSet];
        
        
    }
    return 0;
}
