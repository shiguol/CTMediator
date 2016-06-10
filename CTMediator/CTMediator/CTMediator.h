//
//  CTMediator.h
//  CTMediator
//
//  Created by casa on 16/3/13.
//  Copyright © 2016年 casa. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  应用程序 组件构架、通讯器、中介人
 */
@interface CTMediator : NSObject

+ (instancetype)sharedInstance;

/// 远程 App 调用入口
- (id)performActionWithUrl:(NSURL *)url
                completion:(void(^)(NSDictionary *info))completion;

/// 本地组件调用入口
- (id)performTarget:(NSString *)targetName
             action:(NSString *)actionName
             params:(NSDictionary *)params;

@end
