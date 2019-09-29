//
//  CSAESUtility.h
//  CoinSuper
//
//  Created by Vince on 2019/9/19.
//  Copyright © 2019 primeledger. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SXAESUtility : NSObject

+ (NSString *)EncryptString:(NSString *)sourceStr
                        key:(NSString *)key;

+ (NSString *)DecryptString:(NSString *)secretStr
                        key:(NSString *)key;

@end


