//
//  SXHelper.h
//  SXHelperDemo
//
//  Created by Vince on 2019/9/29.
//  Copyright © 2019 vince. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SXHelper : NSObject

@end

@interface SXHelper(Push)

/**
 判断当前是否支持推送服务
 */
+ (BOOL)isUserNotificationEnable;

/**
 打开APP系统设置页
 */
+ (void)goToAppSystemSetting;

@end
