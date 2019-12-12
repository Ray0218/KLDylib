//
//  KLHook.m
//  KLHook
//
//  Created by WKL on 2019/12/10.
//  Copyright © 2019 Ray. All rights reserved.
//

#import "KLHook.h"
#import <objc/runtime.h>
#import <UIKit/UIKit.h>

@implementation KLHook

+(void)load{
    
    NSLog(@"注入进来了!!!");
      
    return ;
      Method originMath = class_getInstanceMethod(NSClassFromString(@"KLSignalManager"), @selector(testBind));

      Method newMath = class_getInstanceMethod(self, @selector(netestBind)) ;

      method_exchangeImplementations(originMath, newMath);
      
      
 }

-(void)netestBind{
    
    NSLog(@"我是替换的方法%@",self);
 
}

@end
