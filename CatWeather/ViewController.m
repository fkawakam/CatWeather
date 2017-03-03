//
//  ViewController.m
//  CatWeather
//
//  Created by f_kawakami on 2017/03/02.
//  Copyright © 2017 川上 文夫. All rights reserved.
//

#import "ViewController.h"
#import "Food.h"

@interface ViewController ()
{
    Food *foodObj;
}
@property (weak, nonatomic) IBOutlet UITextField *answerLabel;
- (IBAction)doChoice:(UIButton *)sender;
- (IBAction)bkgTapped:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    foodObj = [[Food alloc] initWithFoods:nil];
    CGRect rect = CGRectMake(10,300,200,30);
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


- (IBAction)doChoice:(UIButton *)sender {
    NSString *f = [foodObj choiceFood];
    NSLog(@"FK No.100 %@[%d][%d]", f, [foodObj counter], foodObj.counter);
    _answerLabel.text = f;
}

- (IBAction)bkgTapped:(id)sender {
    [self.view endEditing:YES];
}
@end
