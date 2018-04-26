//
//  UIControl+indexPath.m
//  GoldenCatLottery
//
//  Created by Aron on 2017/7/18.
//  Copyright © 2017年 Aron. All rights reserved.
//

#import "UIControl+indexPath.h"
#import <objc/runtime.h>

@implementation UIControl (indexPath)
- (NSIndexPath *)indexPath {
    return (NSIndexPath *)objc_getAssociatedObject(self, @"indexPath");
}
- (void)setIndexPath:(NSIndexPath *)indexPath {
    objc_setAssociatedObject(self, @"indexPath", indexPath, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
@end
