//
//  AppDelegate.m
//  CTMediator
//
//  Created by casa on 16/3/13.
//  Copyright © 2016年 casa. All rights reserved.
//

#import "AppDelegate.h"

// 统一 URL 调度器
#import "CTMediator.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  return YES;
}

- (BOOL)application:(UIApplication *)app
            openURL:(NSURL *)url
            options:(NSDictionary<NSString *,id> *)options
{
  return [[[CTMediator sharedInstance] performActionWithUrl:url completion:nil] boolValue];
}

@end
