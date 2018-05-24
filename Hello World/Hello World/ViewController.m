//
//  ViewController.m
//  Hello World
//
//  Created by mac on 2018/5/24.
//  Copyright © 2018年 mac. All rights reserved.
//

#import "ViewController.h"
#import "retrieveViewController.h"
@interface ViewController (){
    UILabel *creatLabel;
    UITextField *creatTextField;
    UIButton *creatBtn;
}

@end

@implementation ViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.navigationController setNavigationBarHidden:YES];
    
    [self creatImageView];
    [self creatLabel];
    [self creatTextField];
    [self creatBtn];
}

//设置背景图片
-(void)creatImageView{
    UIImageView *backImage = [[UIImageView alloc] initWithFrame:self.view.bounds];
    backImage.image = [UIImage imageNamed:@"images_login_background"];
    [self.view addSubview:backImage];
}
//标签
-(void)creatLabel{
    //顶部淡黑色标签栏
    UILabel *headLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 80)];
    headLabel.backgroundColor = [UIColor blackColor];
    headLabel.alpha = 0.3;
    [self.view addSubview:headLabel];
    
    //顶部“登陆”标签
    UILabel *loginLabel = [[UILabel alloc] initWithFrame:CGRectMake(137.5, 40, 100, 30)];
    loginLabel.text = @"登陆";
    loginLabel.textColor = [UIColor whiteColor];
    loginLabel.font = [UIFont systemFontOfSize:20];
    loginLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:loginLabel];
    
    //平台中文名称
    UILabel *cnamelabel = [[UILabel alloc] initWithFrame:CGRectMake(40, 220, 280, 30)];
    cnamelabel.text = @"加气混凝土砌块管理平台";
    cnamelabel.textColor = [UIColor whiteColor];
    cnamelabel.font = [UIFont systemFontOfSize:20];
    cnamelabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:cnamelabel];
    
    //平台英文名称
    UILabel *enameLabel = [[UILabel alloc] initWithFrame:CGRectMake(40, 250, 280, 30)];
    
    enameLabel.text = @"Aerated Concrete Block Management Platform";
    enameLabel.textColor = [UIColor whiteColor];
    enameLabel.font = [UIFont systemFontOfSize:10];
    enameLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:enameLabel];
    
    //手机号
    UILabel *pnumberLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 340, 60, 30)];
    pnumberLabel.text = @"手机号";
    pnumberLabel.textColor = [UIColor whiteColor];
    pnumberLabel.font = [UIFont fontWithName:@"Arial" size:20];
    pnumberLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:pnumberLabel];
    
    //密码（pwd=password）
    UILabel *pwdLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 400, 60, 30)];
    pwdLabel.text = @"密  码";
    pwdLabel.textColor = [UIColor whiteColor];
    pwdLabel.font = [UIFont systemFontOfSize:20];
    pwdLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:pwdLabel];
}
//文本输入
-(void)creatTextField{
    //手机号输入栏
    UITextField *pnumberField = [[UITextField alloc] initWithFrame:CGRectMake(90, 325, 240, 50)];
    pnumberField.placeholder = @"请输入手机号码";
    pnumberField.backgroundColor = [UIColor blackColor];
    pnumberField.alpha = 0.3;
    [pnumberField.layer setCornerRadius:5.0];
    [pnumberField.layer setMasksToBounds:YES];
    pnumberField.borderStyle = UITextBorderStyleRoundedRect;
    pnumberField.clearButtonMode = UITextFieldViewModeWhileEditing;
    [self.view addSubview:pnumberField];
    
    //密码输入框
    UITextField *pwdField = [[UITextField alloc] initWithFrame:CGRectMake(90, 385, 240, 50)];
    pwdField.placeholder = @"请输入密码";
    //pwdField.backgroundColor = [UIColor blackColor];
    //pwdField.alpha = 0.3;
    
    pwdField.borderStyle = UITextBorderStyleRoundedRect;
    [pwdField.layer setCornerRadius:5.0];
    [pwdField.layer setMasksToBounds:YES];
    pwdField.clearButtonMode = UITextFieldViewModeWhileEditing;
    [self.view addSubview:pwdField];
    
}

//”找回密码“按钮
-(void)creatBtn{
    //
    UIButton *forgetpwdBtn = [[UIButton alloc] initWithFrame:CGRectMake(180, 450, 160, 30)];
    [forgetpwdBtn setTitle:@"忘记密码？去找回" forState:UIControlStateNormal];
    [forgetpwdBtn setTitle:@"忘记密码？去找回" forState:UIControlStateHighlighted];
    [forgetpwdBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [forgetpwdBtn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    forgetpwdBtn.titleLabel.font = [UIFont systemFontOfSize:16];
    [forgetpwdBtn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview: forgetpwdBtn];
    
    //顶部“登陆”按钮
    UIButton *loginBtn = [[UIButton alloc] initWithFrame:CGRectMake(37.5, 500, 300, 50)];
    [loginBtn setTitle:@"登陆" forState:UIControlStateNormal];
    [loginBtn setTitle:@"登陆" forState:UIControlStateHighlighted];
    [loginBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [loginBtn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    loginBtn.backgroundColor = [UIColor colorWithRed:146.0/255.0 green:177.0/255.0 blue:205.0/255.0 alpha:1];
    [self.view addSubview:loginBtn];
    
}

//按钮点击响应跳转事件
-(void)btnClick{
    retrieveViewController *forgetpwdVC = [[retrieveViewController alloc] init];
    [self.navigationController pushViewController:forgetpwdVC animated:YES];
}

//UITextfield实现代理
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];//取消第一响应者
    return YES;
}
//输入完成后点击输入框以外部分收回键盘
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
