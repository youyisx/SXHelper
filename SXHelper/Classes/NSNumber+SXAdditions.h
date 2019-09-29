//
//  NSNumber+Additions.h
//  chuangke
//
//  Created by jumei_vince on 2017/9/4.
//  Copyright © 2017年 Vince. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSNumber (SXAdditions)
/**
 *	NSString转为NSNumber
 *
 *	@param	string	字符串,
 *
 *	@return	NSNumber, 如果string为nil或@""或内容不是数字,返回`0`
 */
+ (NSNumber *)sx_numberWithString:(NSString *)string;
@end
