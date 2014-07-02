//
//  VWViewController.m
//  NSUserDefaults,Seques,Protocols Challenge
//
//  Created by Valerino on 7/1/14.
//  Copyright (c) 2014 VW. All rights reserved.
//

#import "VWViewController.h"
#import "VWCreateAccountViewController.h"

@interface VWViewController ()

@end

@implementation VWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.usernameLabel.text = [[NSUserDefaults standardUserDefaults] objectForKey:USER_NAME];
    self.passwordLabel.text = [[NSUserDefaults standardUserDefaults] objectForKey:USER_PASSWORD];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
