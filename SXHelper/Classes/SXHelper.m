//
//  SXHelper.m
//  SXHelperDemo
//
//  Created by Vince on 2019/9/29.
//  Copyright © 2019 vince. All rights reserved.
//

#import "SXHelper.h"
#import <UIKit/UIKit.h>
@implementation SXHelper

@end

@implementation SXHelper(Push)

+ (BOOL)isUserNotificationEnable {
    BOOL isEnable = NO;
    UIUserNotificationSettings *setting = [[UIApplication sharedApplication] currentUserNotificationSettings];
    isEnable = (UIUserNotificationTypeNone == setting.types) ? NO : YES;
    return isEnable;
}

+ (void)goToAppSystemSetting {
    UIApplication *application = [UIApplication sharedApplication];
    NSURL *url = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
    if ([application canOpenURL:url]) {
        if ([application respondsToSelector:@selector(openURL:options:completionHandler:)]) {
            if (@available(iOS 10.0, *)) {
                [application openURL:url options:@{} completionHandler:nil];
            } else {
                [application openURL:url];
            }
        } else {
            [application openURL:url];
        }
    }
}

@end
