//
//  ViewController.m
//  appium
//
//  Created by XiaoGang on 2018/3/7.
//  Copyright © 2018年 xiaojiekeji. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *aLabel;

@property (weak, nonatomic) IBOutlet UIButton *aButton;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)buttonAction:(id)sender {
    NSString *title = self.aLabel.text;
    NSInteger num = [title intValue];
    title = [NSString stringWithFormat:@"%d",num + 1];
    [self.aLabel setText:title];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
