//
//  EJHViewController.m
//  TheLastTime
//
//  Created by Emily Hoehne on 9/23/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "EJHViewController.h"

@interface EJHViewController ()
@property (strong, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) IBOutlet UIButton *button;
@property (strong, nonatomic) IBOutlet UILabel *date;

@end

@implementation EJHViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    if ([[NSUserDefaults]])
}
- (IBAction)save:(id)sender {
    [[NSUserDefaults standardUserDefaults] setObject:self.textField.text]
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
