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

/** 小数位精度控制*/
- (NSString *)sx_decimalPoint:(NSInteger)point{
    if (point < 0) return self;
    NSArray * numbers_ = [self componentsSeparatedByString:@"."];
    if (numbers_.count != 2) return self;
    if (point == 0) return [numbers_ firstObject];
    NSString * decimal_ = [numbers_ lastObject];
    if (decimal_.length == point) return self;
    if (decimal_.length > point){
        decimal_ = [decimal_ substringToIndex:point];
    } else {
        NSInteger dis_ = point - decimal_.length;
        NSString *tenPre_ = @((NSInteger)(pow(10, dis_))).stringValue;
        tenPre_ = [tenPre_ substringFromIndex:1];
        decimal_ = [decimal_ stringByAppendingString:tenPre_];
    }
    return [numbers_.firstObject stringByAppendingFormat:@".%@",decimal_];
}
@end
