//
//  retrieveViewController.m
//  Hello World
//
//  Created by mac on 2018/5/24.
//  Copyright © 2018年 mac. All rights reserved.
//

#import "retrieveViewController.h"

@interface retrieveViewController (){
    UIImageView *creatImageView;
}

@end

@implementation retrieveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self creatImageView];
}

//设置背景图片
-(void)creatImageView{
    UIImageView *backImage = [[UIImageView alloc] initWithFrame:self.view.bounds];
    backImage.image = [UIImage imageNamed:@"images_login_background"];
    [self.view addSubview:backImage];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
