//
//  LoginView.h
//  MVCText
//
//  Created by 王天亮 on 2019/9/19.
//  Copyright © 2019 王天亮. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol PassButtonDelegate <NSObject>

- (void)clickButton: (UIButton *)sender;

@end
@interface LoginView : UIView
@property (nonatomic, strong) UITextField *accountTextField;
@property (nonatomic, strong) UITextField *passwordTextField;
@property (nonatomic, strong) UIButton *loginButton;
@property (nonatomic, strong) UIButton *registerButton;
@property (nonatomic, weak) id<PassButtonDelegate>delegate;

- (void)viewInit;
@end

NS_ASSUME_NONNULL_END
