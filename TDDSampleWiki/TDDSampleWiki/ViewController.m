//
//  ViewController.m
//  TDDSampleWiki
//
//  Created by Trinh Huy Cuong  on 5/24/13.
//  Copyright (c) 2013 QSoftVietNam. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UITableView *tbview = [[UITableView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:tbview];
    
	// Do any additional setup after loading the view, typically from a nib.
    [self.view setBackgroundColor:[UIColor underPageBackgroundColor]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
