//
//  LoginView.m
//  MVCText
//
//  Created by 王天亮 on 2019/9/19.
//  Copyright © 2019 王天亮. All rights reserved.
//

#import "LoginView.h"

@implementation LoginView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (void)viewInit {
    self.accountTextField = [[UITextField alloc] initWithFrame:CGRectMake(100, 200, 100, 40)];
    self.accountTextField.placeholder = @"请输入账号";
    self.accountTextField.layer.borderWidth = 1;
    self.accountTextField.layer.borderColor = [UIColor grayColor].CGColor;
    self.accountTextField.layer.cornerRadius = 15;
    [self addSubview:self.accountTextField];
    
    self.passwordTextField = [[UITextField alloc] initWithFrame:CGRectMake(100, 300, 100, 40)];
    self.passwordTextField.placeholder = @"请输入密码";
    self.passwordTextField.layer.borderWidth = 1;
    self.passwordTextField.layer.borderColor = [UIColor grayColor].CGColor;
    self.passwordTextField.layer.cornerRadius = 15;
    [self addSubview:self.passwordTextField];
    
    self.loginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.loginButton setFrame:CGRectMake(100, 380, 40, 40)];
    [self.loginButton setTitle:@"登录" forState:UIControlStateNormal];
    [self.loginButton setTintColor:[UIColor blueColor]];
    [self.loginButton addTarget:self action:@selector(pressLand:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview: self.loginButton];
}
- (void)pressLand:(UIButton *)sender {
    if ([self.delegate respondsToSelector:@selector(clickButton:)]) {
        [self.delegate clickButton:sender];
    }
    //respondsToSelector 判断是否实现了这个方法;
    //如果实现了这个代理方法，讲button传过去
        
}

@end
