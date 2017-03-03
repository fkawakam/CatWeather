//
//  ViewController.m
//  CatWeather
//
//  Created by f_kawakami on 2017/03/02.
//  Copyright © 2017 川上 文夫. All rights reserved.
//

#import "ViewController.h"
#import "MyClass.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *catField;
@property (weak, nonatomic) IBOutlet UILabel *humanLabel;
@property (weak, nonatomic) IBOutlet UITextField *msgTextField;

- (IBAction)bkgTapped:(id)sender;
- (IBAction)calc:(UIButton *)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    MyClass *myObj = [[MyClass alloc]init];
    myObj.where = @"大分";
    NSString *myMessage = [myObj hello:@"小野"];
    self.msgTextField.text = myMessage;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)bkgTapped:(id)sender {
    [self.view endEditing:YES];
}

- (IBAction)calc:(UITextField *)sender {
    double catAge = [self.catField.text doubleValue];
    double humanAge = [self catAgeToHumanAge:catAge];
    self.humanLabel.text = [NSString stringWithFormat:@"%.1f", humanAge];
}

- (double)catAgeToHumanAge:(double)catAge{
    return catAge * 3;
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    NSMutableString *tmp = [self.catField.text mutableCopy];
    [tmp replaceCharactersInRange:range withString:string];
    BOOL isAgeLimit = [tmp doubleValue] < 100;
    BOOL isLengthLimit = [tmp length]<=4;
    return isAgeLimit && isLengthLimit;
}
@end
