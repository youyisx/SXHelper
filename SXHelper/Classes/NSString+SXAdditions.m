//
//  NSString+Additions.m
//  chuangke
//
//  Created by jumei_vince on 2017/9/4.
//  Copyright © 2017年 Vince. All rights reserved.
//

#import "NSString+SXAdditions.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (SXAdditions)

- (NSString *)stringDeleteHeadTailBlank {
    NSCharacterSet *whitespace = [NSCharacterSet whitespaceCharacterSet];
    NSString *resultString = [self stringByTrimmingCharactersInSet:whitespace];
    
    return resultString;
}

- (BOOL)isNumeric {
    if ([self length] == 0) {
        return NO;
    }
    NSScanner *sc = [NSScanner scannerWithString:self];
    if ([sc scanFloat:NULL]) {
        return [sc isAtEnd];
    }
    return NO;
}


@end
