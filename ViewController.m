//
//  ViewController.m
//  AnimationsTest
//
//  Created by Alexander Demidovich on 11.12.15.
//  Copyright © 2015 Alexander Demidovich. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic)UIView* testView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView* view = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    view.backgroundColor = [UIColor greenColor];
    [self.view addSubview:view];
    
    self.testView = view;
    
    
    /*
    
    [UIView animateWithDuration:5
                     animations:^{
                         view.center = CGPointMake(CGRectGetWidth(self.view.bounds), 150);
                     }];
    
    */
}
- (void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
   
    /*
    [UIView animateWithDuration:5
                     animations:^{
                         self.testView.center = CGPointMake(CGRectGetWidth(self.view.bounds) - CGRectGetWidth(self.testView.frame) / 2, 150);
                     }];
     
     */
    
    [UIView animateWithDuration:5
                          delay:1
                        options:UIViewAnimationOptionCurveEaseInOut | UIViewAnimationOptionRepeat |UIViewAnimationOptionAutoreverse
                     animations:^{
                         self.testView.center = CGPointMake(CGRectGetWidth(self.view.bounds) - CGRectGetWidth(self.testView.frame) / 2, 150);
                     }
                     completion:^(BOOL finished) {
                         NSLog(@"animation fibished! %d", finished);
                     }];
}

- (void) didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
