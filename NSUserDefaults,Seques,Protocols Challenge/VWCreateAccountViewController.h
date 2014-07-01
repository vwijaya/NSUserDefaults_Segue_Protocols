//
//  VWCreateAccountViewController.h
//  NSUserDefaults,Seques,Protocols Challenge
//
//  Created by Valerino on 7/1/14.
//  Copyright (c) 2014 VW. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VWCreateAccountViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *usernameTextField;

@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;

@property (strong, nonatomic) IBOutlet UITextField *confirmPasswordTextField;

- (IBAction)createAccountButtonPressed:(UIButton *)sender;

- (IBAction)cancelButtonPressed:(UIButton *)sender;


@end