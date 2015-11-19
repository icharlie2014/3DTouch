//
//  ViewController.m
//  3DTouch
//
//  Created by panglong on 15/11/19.
//  Copyright © 2015年 庞龙. All rights reserved.
//

#import "ViewController.h"
#import "HaHaViewController.h"
#import "HeHeViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(TouchHaHa) name:@"3DTouchHaHa" object:nil];
    
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(TouchHeHe) name:@"3DTouchHeHe" object:nil];
}

- (void)TouchHaHa
{
    [self dismissViewControllerAnimated:YES completion:nil];
    
    UIStoryboard *storyboardHaHaViewController = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    HaHaViewController *HaHaViewController = [storyboardHaHaViewController instantiateViewControllerWithIdentifier:@"HaHaViewController"];
    [self presentViewController:HaHaViewController animated:YES completion:nil];
}

- (void)TouchHeHe
{
    [self dismissViewControllerAnimated:YES completion:nil];
    
    UIStoryboard *storyboardHeHeViewController = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    HeHeViewController *HeHeViewController = [storyboardHeHeViewController instantiateViewControllerWithIdentifier:@"HeHeViewController"];
    [self presentViewController:HeHeViewController animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
