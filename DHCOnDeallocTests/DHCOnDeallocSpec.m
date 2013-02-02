//
//  DHCOnDeallocSpec.m
//  DHCOnDealloc
//
//  Created by confidence on 01/02/2013.
//  Copyright 2013 confidenceJuice. All rights reserved.
//

#import <Kiwi/Kiwi.h>
#import <objc/runtime.h>
#import "NSObject+DHCOnDealloc.h"





SPEC_BEGIN(DHCOnDeallocSpec)

describe(@"An example object", ^{
    
    __block NSObject *someObject=[[NSObject alloc] init];
        
    context(@"when deallocing", ^{
        
        it(@"should execute a block", ^{
            
            __block BOOL didBlockExecute=FALSE;
            
            void (^aBlock)(void)=^{
                NSLog(@"wahay I'm in a block, tea anyone?");
                didBlockExecute=TRUE;
            };
            
            [someObject onDealloc:aBlock];
            
            someObject=nil;
            
            [[theValue(didBlockExecute) should] beTrue];
        });
    });
});

SPEC_END


