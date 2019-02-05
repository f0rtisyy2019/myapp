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
    UIAlertController *alert1 = [UIAlertController alertControllerWithTitle:@"" message:@"That is correct" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alert2 = [UIAlertController alertControllerWithTitle:@"" message:@"That is incorrect" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *yesButton = [UIAlertAction actionWithTitle:@"YES" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
        [self presentViewController:alert1 animated:YES completion:nil];
    }];
    UIAlertAction *noButton = [UIAlertAction actionWithTitle:@"NO" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
        [self presentViewController:alert2 animated:YES completion:nil];
    }];
    UIAlertAction *closeAction = [UIAlertAction actionWithTitle:@"CLOSE" style:UIAlertActionStyleDefault handler:nil];
    [alert addAction:yesButton];
    [alert addAction:noButton];
    [alert1 addAction:closeAction];
    [alert2 addAction:closeAction];
    [self presentViewController:alert animated:YES completion:nil];
}

@end
