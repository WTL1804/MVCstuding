//
//  ViewController.h
//  MVCText
//
//  Created by 王天亮 on 2019/9/19.
//  Copyright © 2019 王天亮. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LandModel.h"
#import "LoginView.h"
@interface ViewController : UIViewController <PassButtonDelegate>
@property (nonatomic, strong) LandModel *mModel;
@property (nonatomic, strong) LoginView *loginView;


@end

