//
//  DHCOnDealloc.m
//  DHCOnDealloc
//
//  Created by confidence on 01/02/2013.
//  Copyright (c) 2013 confidenceJuice. All rights reserved.
//

#import "DHCOnDealloc.h"

@implementation DHCOnDealloc

@synthesize finalBlock;

-(void)dealloc{
    if (finalBlock) {
        finalBlock();
    }
}

@end
