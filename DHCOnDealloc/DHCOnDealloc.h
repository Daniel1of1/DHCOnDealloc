//
//  DHCOnDealloc.h
//  DHCOnDealloc
//
//  Created by confidence on 01/02/2013.
//  Copyright (c) 2013 confidenceJuice. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DHCOnDealloc : NSObject

@property (nonatomic, copy) void (^finalBlock)(void);

@end
