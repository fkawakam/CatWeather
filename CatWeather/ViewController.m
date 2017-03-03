//
//  ViewController.m
//  CatWeather
//
//  Created by f_kawakami on 2017/03/02.
//  Copyright © 2017 川上 文夫. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *catField;
@property (weak, nonatomic) IBOutlet UILabel *humanLabel;

- (IBAction)calc:(UIButton *)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)calc:(UIButton *)sender {
    double catAge = [self.catField.text doubleValue];
    double humanAge = [self catAgeToHumanAge:catAge];
    self.humanLabel.text = [NSString stringWithFormat:@"%.1f", humanAge];
}

- (double)catAgeToHumanAge:(double)catAge{
    return catAge * 3;
}
@end
