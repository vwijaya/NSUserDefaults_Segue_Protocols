//
//  VWCreateAccountViewController.m
//  NSUserDefaults,Seques,Protocols Challenge
//
//  Created by Valerino on 7/1/14.
//  Copyright (c) 2014 VW. All rights reserved.
//

#import "VWCreateAccountViewController.h"

@interface VWCreateAccountViewController ()

@end

@implementation VWCreateAccountViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)createAccountButtonPressed:(UIButton *)sender {
    
    // Validating user inputs
    if((self.usernameTextField.text.length != 0) &&
       (self.passwordTextField.text.length != 0) &&
       //BAD: (self.passwordTextField.text == self.confirmPasswordTextField.text)
       [self.passwordTextField.text isEqualToString:self.confirmPasswordTextField.text]
        )
    {
        // Persisting information
        [[NSUserDefaults standardUserDefaults] setObject:self.usernameTextField.text forKey:USER_NAME];
        [[NSUserDefaults standardUserDefaults] setObject:self.passwordTextField.text forKey:USER_PASSWORD];
        [[NSUserDefaults standardUserDefaults] synchronize];
        
        [self.delegate didCreateAccount];
        
        //NSLog(@"Username %@", self.usernameTextField.text);
        //NSLog(@"Password %i %@", self.passwordTextField.text.length, self.passwordTextField.text);
        //NSLog(@"Confirmed %i %@", self.confirmPasswordTextField.text.length, self.confirmPasswordTextField.text);
        
        //UIAlertView *alertView = [[UIAlertView alloc]
        //                          initWithTitle:@"Check" message:@"Good"
        //                          delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        //[alertView show];
    } else {
        //NSLog(@"Username %@", self.usernameTextField.text);
        //NSLog(@"Password %i %@", self.passwordTextField.text.length, self.passwordTextField.text);
        //NSLog(@"Confirmed %i %@", self.confirmPasswordTextField.text.length, self.confirmPasswordTextField.text);
        
        UIAlertView *alertView = [[UIAlertView alloc]
                                  initWithTitle:@"Error" message:@"Information not entered correctly"
                                  delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alertView show];
    }
    

}

- (IBAction)cancelButtonPressed:(UIButton *)sender {
    [self.delegate didCancel];
}
@end
