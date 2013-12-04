//
//  ViewController.m
//  RFLoader
//
//  Created by Ricardo Funk on 12/3/13.
//  Copyright (c) 2013 Ricardo Funk. All rights reserved.
//

#import "ViewController.h"
#import "RFLoader.h"

@interface ViewController ()

- (IBAction)showLoaderPressed:(id)sender;
- (IBAction)removeLoaderPressed:(id)sender;

@end

@implementation ViewController {
    RFLoader *customLoader;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    customLoader = [[RFLoader alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showLoaderPressed:(id)sender {
    
    //Animation: VERTICAL, HORIZONTAL, MIX
    //Color: Use UIColor
    
    [customLoader showLoaderWithColor:[UIColor redColor] andAnimation:LoaderMix andImage:nil onView:self.view];
}

- (IBAction)removeLoaderPressed:(id)sender {
    [customLoader removeLoader];
}
@end
