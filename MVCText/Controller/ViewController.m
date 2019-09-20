//
//  ViewController.m
//  MVCText
//
//  Created by 王天亮 on 2019/9/19.
//  Copyright © 2019 王天亮. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.loginView = [[LoginView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    self.loginView.delegate = self;
    [self.view addSubview:self.loginView];
    [self.loginView viewInit];
    
    
    self.mModel = [[LandModel alloc] init];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(landSuccessful:) name:@"landSuccessfule" object:nil];
    //注册KVO观察者
    //model观察loginView的acconttextFieldtext的变化
    [self.loginView addObserver:self.mModel forKeyPath:@"accountTextField" options:NSKeyValueObservingOptionNew context:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(landFail:) name:@"landFail" object:nil];
}
- (void)landSuccessful:(NSNotification *)notification {
    NSLog(@"成功");

}
- (void)landFail:(NSNotification *)notification {
    NSLog(@"失败");
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}
- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
- (void)clickButton:(UIButton *)sender {
    [self.mModel checkNames:self.loginView.accountTextField.text withPassWord:self.loginView.passwordTextField.text];
}


@end
