//
//  ViewController.m
//  SZColorHexDemo
//
//  Created by Song Zhou on 24/11/2017.
//  Copyright © 2017 Song Zhou. All rights reserved.
//

#import "ViewController.h"
#import "SZColorHex.h"

static const NSUInteger exampleColor = 0xE41B17;
static NSString* exampleColorString = @"#E41B17";

@interface ViewController ()

@property (nonatomic) UIView *testView;
@property (nonatomic) UIView *exampleView;

@end

@implementation ViewController

- (void)loadView {
    UIView *container = [UIView new];
    
    _testView = [UIView new];
    [container addSubview:_testView];
    
    _exampleView = [UIView new];
    [container addSubview:_exampleView];
    
    self.view = container;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _exampleView.backgroundColor = [UIColor colorWithRed:228/255.0 green:27/255.0 blue:23/255.0 alpha:1.0];
//    _testView.backgroundColor = [UIColor colorFromHex:exampleColor];
    _testView.backgroundColor = [UIColor colorFromHexString:exampleColorString];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
    CGFloat w = CGRectGetWidth(self.view.bounds);
    CGFloat h = CGRectGetHeight(self.view.bounds);
    
    _exampleView.frame = CGRectMake(0, 0, w/2, h);
    _testView.frame = CGRectMake(w/2, 0, w/2, h);

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
