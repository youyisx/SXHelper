//
//  NSNumber+Additions.m
//  chuangke
//
//  Created by jumei_vince on 2017/9/4.
//  Copyright © 2017年 Vince. All rights reserved.
//

#import "NSNumber+SXAdditions.h"
#import "NSString+SXAdditions.h"
@implementation NSNumber (SXAdditions)

+ (NSNumber *)sx_numberWithString:(NSString *)string {
    if (string && [string isNumeric] ) {
        return [[self class] numberWithDouble:[string doubleValue]];
    } else {
        return [[self class] numberWithFloat:0.0f];
    }
}

@end
