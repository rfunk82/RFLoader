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
- (IBAction)showLoaderWithImage:(id)sender;
- (IBAction)removeLoaderPressed:(id)sender;
- (IBAction)removeLoaderWithSuccessPressed:(id)sender;
- (IBAction)removeLoaderFailedPressed:(id)sender;

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

- (IBAction)showLoaderWithImage:(id)sender {
    
    [customLoader showLoaderWithColor:[UIColor redColor] andAnimation:LoaderMix andImage:@"icon.png" onView:self.view];
}

- (IBAction)showLoaderPressed:(id)sender {
    
    //Animation: LoaderVertical, LoaderHorizontal, LoaderMix
    //Color: Use UIColor
    
   // [customLoader showLoaderWithColor:[UIColor blueColor] andAnimation:LoaderMix andImage:nil onView:self.view];
    [customLoader showDotLoaderWithColor:[UIColor redColor] onView:self.view];
}

- (IBAction)removeLoaderPressed:(id)sender {
    [customLoader removeLoader];
}

- (IBAction)removeLoaderWithSuccessPressed:(id)sender {
    [customLoader removeLoaderWithSuccess:YES];
}

- (IBAction)removeLoaderFailedPressed:(id)sender {
    [customLoader removeLoaderWithSuccess:NO];
}


@end
