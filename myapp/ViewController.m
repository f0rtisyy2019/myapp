//
//  ViewController.m
//  myapp
//
//  Created by gzy on 2/4/19.
//  Copyright © 2019 gzy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)clickbutton:(id)sender {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"WELCOME" message:@"Is this your first app of Objective-C?" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *yesButton = [UIAlertAction actionWithTitle:@"YES" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
        NSLog(@"That is correct");
    }];
    UIAlertAction *noButton = [UIAlertAction actionWithTitle:@"NO" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
        NSLog(@"That is incorrect");
    }];
    [alert addAction:yesButton];
    [alert addAction:noButton];
    [self presentViewController:alert animated:YES completion:nil];
}

@end
