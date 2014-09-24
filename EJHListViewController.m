//
//  EJHListViewController.m
//  TheLastTime
//
//  Created by Emily Hoehne on 9/23/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "EJHListViewController.h"

static NSString * const timeKey = @"time";
static NSString * const activityKey = @"activity";

@interface EJHListViewController () <UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) IBOutlet UILabel *label;

@end

@implementation EJHListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self loadUserDefaults];
}
- (IBAction)button:(id)sender {
    self.label.text = [NSString stringWithFormat:@"was: %@", [[NSDate date] description]];
    
    [self synchronize];
}-(void) loadUserDefaults {
    self.textField.text = [[NSUserDefaults standardUserDefaults] stringForKey:activityKey];
    self.label.text = [[NSUserDefaults standardUserDefaults] stringForKey:timeKey];
}

- (void)synchronize {
    [[NSUserDefaults standardUserDefaults] setObject:self.label.text forKey:timeKey];
    [[NSUserDefaults standardUserDefaults] setObject:self.textField.text forKey:activityKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
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
