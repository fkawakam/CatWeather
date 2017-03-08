//
//  ViewController.m
//  CatWeather
//
//  Created by f_kawakami on 2017/03/02.
//  Copyright © 2017 川上 文夫. All rights reserved.
//

#import "ViewController.h"
#import "Food.h"
#import "CorpBeta.h"

@interface ViewController ()
{
    Food *foodObj;
}
- (IBAction)bkgTapped:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGRect rect = CGRectMake(50,100,200,30);
    UILabel *myLabel = [[UILabel alloc]initWithFrame:rect];
    myLabel.text = @"今日もいいね!";
    myLabel.textAlignment = NSTextAlignmentCenter;
    myLabel.textColor = [UIColor whiteColor];
    myLabel.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:myLabel];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)bkgTapped:(id)sender {
    [self.view endEditing:YES];
}

@end
