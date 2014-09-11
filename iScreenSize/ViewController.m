//
//  ViewController.m
//  iScreenSize
//
//  Created by administrator on 11/09/2014.
//  Copyright (c) 2014 administrator. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize lblScreenSize;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self CheckScreenSize];
}

-(void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation
{
    [self CheckScreenSize];
}

-(void) CheckScreenSize
{
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    CGFloat height = [UIScreen mainScreen].bounds.size.height;
    //CGFloat twidth = [UIScreen mainScreen].scale * width;
    //CGFloat theight = [UIScreen mainScreen].scale * height;
    
    if ((height==736) && (width==414))
    {
        lblScreenSize.text = @ "iPhone 6 Plus (5.5-inch 1920 x 1080)";
    }
    
    if ((height==667) && (width==375))
    {
        lblScreenSize.text = @ "iPhone 6 (4.7-inch 1334 x 750)";
    }
    
    if ((height==568) && (width==320))
    {
        lblScreenSize.text = @ "iPhone 5/5S/5C (4-inch 1136 x 640)";
    }
    
    if ((height==480) && (width==320))
    {
        lblScreenSize.text = @ "iPhone 4/4S (3.5-inch 960 x 640)";
    }
    
    if ((height==1024) && (width==768))
    {
        lblScreenSize.text = @ "iPad 2/Air/Retina Portrait (9.7-inch 1024 x 768)";
    }
    if ((height==768) && (width==1024))
    {
        lblScreenSize.text = @ "iPad 2/Air/Retina Landscape (9.7-inch 1024 x 768)";
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
