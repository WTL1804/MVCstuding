//
//  LandModel.m
//  MVCText
//
//  Created by 王天亮 on 2019/9/19.
//  Copyright © 2019 王天亮. All rights reserved.
//

#import "LandModel.h"

@implementation LandModel
- (void)checkNames:(NSString *)username withPassWord:(NSString *)password {
    if ([username isEqualToString:@"123"] && [password isEqualToString:@"789"]) {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"landSuccessfule" object:self];
    } else {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"landFail" object:self];
    }
}
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    NSLog(@"%@的值已改变", keyPath);
}
@end
