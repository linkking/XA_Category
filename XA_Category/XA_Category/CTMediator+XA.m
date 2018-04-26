//
//  CTMediator+XA.m
//  XA_Category
//
//  Created by zhulei on 2018/4/26.
//  Copyright © 2018年 zs. All rights reserved.
//

#import "CTMediator+XA.h"

@implementation CTMediator (XA)

- (UIViewController *)XA_viewController
{
    /*
     XAViewController *viewController = [[XAViewController alloc] init];
     */
    return [self performTarget:@"XA" action:@"viewController" params:nil shouldCacheTarget:NO];
}
@end
