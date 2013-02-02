//
//  NSObject+DHCOnDealloc.m
//  DHCOnDealloc
//
//  Created by confidence on 01/02/2013.
//  Copyright (c) 2013 confidenceJuice. All rights reserved.
//

#import "NSObject+DHCOnDealloc.h"
#import "DHCOnDealloc.h"
#import <objc/runtime.h>

static char DHCONDEALLOCOBJECT_KEY;

@implementation NSObject (DHCOnDealloc)

-(void)onDealloc:(void(^)())deallocBlock{

    DHCOnDealloc *dhcOnDealloc=[[DHCOnDealloc alloc] init];
    dhcOnDealloc.finalBlock=deallocBlock;
    
    objc_setAssociatedObject(self, &DHCONDEALLOCOBJECT_KEY, dhcOnDealloc, OBJC_ASSOCIATION_RETAIN);
    
}

@end
