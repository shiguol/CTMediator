//
//  CTMediator+CTMediatorModuleDetailActions.m
//  CTMediator
//
//  Created by casa on 16/3/13.
//  Copyright © 2016年 casa. All rights reserved.
//

#import "CTMediator+CTMediatorModuleDetailActions.h"

NSString * const kCTMediatorTargetDetail = @"DetailVC";

//-----------调用 Target_Detail------begin-------------------
NSString * const kCTMediatorActionNativFetchDetailViewController = @"nativeFetchDetailViewController";

NSString * const kCTMediatorActionNativePresentImage = @"nativePresentImage";

NSString * const kCTMediatorActionNativeNoImage = @"nativeNoImage";

NSString * const kCTMediatorActionShowAlert = @"showAlert";
//-----------调用 Target_Detail----end-------------------

@implementation CTMediator (CTMediatorModuleDetailActions)

- (UIViewController *)CTMediator_viewControllerForDetail {
    UIViewController *viewController = nil;
    viewController = [self performTarget:kCTMediatorTargetDetail action:kCTMediatorActionNativFetchDetailViewController params:@{@"key":@"value"}];
    
    if ([viewController isKindOfClass:[UIViewController class]]) {
        // view controller 交付出去之后，可以由外界选择是 push 还是 present
        return viewController;
    } else {
        // 这里处理异常场景，具体如何处理取决于产品
        return [[UIViewController alloc] init];
    }
}

- (void)CTMediator_presentImage:(UIImage *)image {
    if (image) {
        [self performTarget:kCTMediatorTargetDetail action:kCTMediatorActionNativePresentImage params:@{@"image":image}];
    } else {
        // 这里处理 image 为 nil 的场景，如何处理取决于产品
        [self performTarget:kCTMediatorTargetDetail action:kCTMediatorActionNativeNoImage params:@{@"image":[UIImage imageNamed:@"noImage"]}];
    }
}

- (void)CTMediator_showAlertWithMessage:(NSString *)message
                           cancelAction:(void(^)(NSDictionary *info))cancelAction
                          confirmAction:(void(^)(NSDictionary *info))confirmAction {
    NSMutableDictionary *paramsToSend = [[NSMutableDictionary alloc] init];
    if (message) {
        paramsToSend[@"message"] = message;
    }
    if (cancelAction) {
        paramsToSend[@"cancelAction"] = cancelAction;
    }
    if (confirmAction) {
        paramsToSend[@"confirmAction"] = confirmAction;
    }
    [self performTarget:kCTMediatorTargetDetail action:kCTMediatorActionShowAlert params:paramsToSend];
}

@end
