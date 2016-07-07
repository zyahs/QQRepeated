//
//  ZYMainViewController.m
//  QQRepeated
//
//  Created by 飞奔的羊 on 16/7/7.
//  Copyright © 2016年 zyahs. All rights reserved.
//

#import "ZYMainViewController.h"

@interface ZYMainViewController ()

@end

@implementation ZYMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	[self addChildViewControlles];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)addChildViewControlles
{
	self.viewControllers = @[
							 [self addChildVcName:@"ZYMessageViewController" WithTitle:@"消息" WithImageName:@"tab_recent_nor"],
							 [self addChildVcName:@"ZYContactViewController" WithTitle:@"联系人" WithImageName:@"tab_buddy_nor"],
							 [self addChildVcName:@"ZYQzoneViewController" WithTitle:@"动态" WithImageName:@"tab_qworld_nor"],
							 [self addChildVcName:@"ZYSettingViewController" WithTitle:@"设置" WithImageName:@"tab_me_nor"]
							 
							 ];

}

- (UINavigationController *)addChildVcName:(NSString *)VcName WithTitle:(NSString *)title WithImageName:(NSString *)imageName
{
//根据字符串,创建子控制器
	Class vc = NSClassFromString(VcName);
	
	//断言
	NSAssert([vc isSubclassOfClass:[UIViewController class]], @"您输入的控制器名字有误");

	UIViewController *Vc =[[vc alloc]init];
	//设置相关
	Vc.title = title;
	Vc.tabBarItem.image = [UIImage imageNamed:imageName];
	
	UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:Vc];
	
	return nav;
	
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
