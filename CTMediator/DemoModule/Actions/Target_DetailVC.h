//
//  Target_DetailVC.h
//  CTMediator
//
//  Created by casa on 16/3/13.
//  Copyright © 2016年 casa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Target_DetailVC : NSObject

- (UIViewController *)Action_nativeFetchDetailViewController:(NSDictionary *)params;

- (id)Action_nativePresentImage:(NSDictionary *)params;

- (id)Action_showAlert:(NSDictionary *)params;

// 容错
- (id)Action_nativeNoImage:(NSDictionary *)params;

@end
