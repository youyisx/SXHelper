//
//  NSString+Additions.h
//  chuangke
//
//  Created by jumei_vince on 2017/9/4.
//  Copyright © 2017年 Vince. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (SXAdditions)

- (NSString *)stringDeleteHeadTailBlank;

- (BOOL)isNumeric;

/** 小数位精度控制*/
- (NSString *)sx_decimalPoint:(NSInteger)point;

@end
