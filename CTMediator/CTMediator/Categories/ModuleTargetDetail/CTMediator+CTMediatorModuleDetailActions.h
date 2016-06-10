//
//  CTMediator+CTMediatorModuleDetailActions.h
//  CTMediator
//
//  Created by casa on 16/3/13.
//  Copyright © 2016年 casa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CTMediator.h"

/**
 *  中介人 扩展：响应导航到「详情页（DetailViewController）」的逻辑
 */
@interface CTMediator (CTMediatorModuleDetailActions)

/**
 *  中介人 便捷方法，创建出「详情 VC」
 *
 *  @return 详情-VC
 */
- (UIViewController *)CTMediator_viewControllerForDetail;

/**
 *  带参数启动「详情-VC」
 */
- (void)CTMediator_showAlertWithMessage:(NSString *)message
                           cancelAction:(void(^)(NSDictionary *info))cancelAction
                          confirmAction:(void(^)(NSDictionary *info))confirmAction;

/**
 *  带参数启动「详情-VC」
 */
- (void)CTMediator_presentImage:(UIImage *)image;

@end
