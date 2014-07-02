//
//  VWSignInViewController.m
//  NSUserDefaults,Seques,Protocols Challenge
//
//  Created by Valerino on 7/1/14.
//  Copyright (c) 2014 VW. All rights reserved.
//

#import "VWSignInViewController.h"

@interface VWSignInViewController ()

@end

@implementation VWSignInViewController

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

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.destinationViewController isKindOfClass:[VWCreateAccountViewController class]])
    {
        VWCreateAccountViewController *createAccountVC = segue.destinationViewController;
        createAccountVC.delegate = self;
    }
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

- (IBAction)createAccountBarButtonItemPressed:(UIBarButtonItem *)sender {
    [self performSegueWithIdentifier:@"toCreateAccountViewControllerSegue" sender:sender];
}

- (IBAction)loginButtonPressed:(UIButton *)sender {
    
    NSString *username = [[NSUserDefaults standardUserDefaults] objectForKey:USER_NAME];
    NSString *password = [[NSUserDefaults standardUserDefaults] objectForKey:USER_PASSWORD];
    
    if([self.usernameTextField.text isEqualToString:username] &&
       [self.passwordTextField.text isEqualToString:password]
       )
    {
        [self performSegueWithIdentifier:@"toViewControllerSegue" sender:sender];
    } else {
        UIAlertView *alertView = [[UIAlertView alloc]
                                  initWithTitle:@"Error" message:@"Username/password combination is incorrect"
                                  delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alertView show];
    }
    

}

#pragma mark - VWCreateAccountViewControllerDelegate
-(void)didCancel
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)didCreateAccount
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
