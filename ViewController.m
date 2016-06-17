//
//  ViewController.m
//  OutletsAndActions02
//
//  Created by James O'Connor on 6/16/16.
//  Copyright © 2016 James O'Connor. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property(nonatomic, weak) IBOutlet UIButton *run;
@property(nonatomic, weak) IBOutlet UITextField *firstName;
@property(nonatomic, weak) IBOutlet UITextField *lastName;
@property(nonatomic, weak) IBOutlet UILabel *result;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"hello world");
}

-(IBAction) runButtonPressed {
    
    self.firstName.text = self.firstName.text;
    self.lastName.text = self.lastName.text;
    
    NSString *firstName = self.firstName.text;
    NSString *lastName = self.lastName.text;
    
    NSString *welcomeMessage = [NSString stringWithFormat:@"%@ %@",firstName,lastName];
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Message" message:welcomeMessage preferredStyle:UIAlertControllerStyleAlert];
    
    [alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }]];
    
    [self presentViewController:alert animated:YES completion:nil];
}
    


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
