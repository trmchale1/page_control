//
//  GTViewController.m
//  PageControlExample
//
//  Created by Tim McHale on 5/20/14.
//  Copyright (c) 2014 Gramercy Consultants. All rights reserved.
//

#import "GTViewController.h"
#import "GTAppDelegate.m"

@interface GTViewController ()

@end

@implementation GTViewController

+ (UIColor *)pageControlColorWithIndex:(NSUInteger)index {
    if (__pageControlColorList == nil) {
        __pageControlColorList = [[NSArray alloc] initWithObjects:[UIColor grayColor], [UIColor greenColor], [UIColor magentaColor],
                                  [UIColor blueColor], [UIColor orangeColor], [UIColor brownColor], [UIColor redColor], nil];
    }
    return [__pageControlColorList objectAtIndex:index % [__pageControlColorList count]];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        pageNumber = page;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    pageNumberLabel.text = [NSString stringWithFormat:@"Page %d", pageNumber + 1];
    self.view.backgroundColor = [GTViewController pageControlColorWithIndex:pageNumber];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
