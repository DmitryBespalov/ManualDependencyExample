//
//  ViewController.m
//  ProjectA
//
//  Created by Dmitry Bespalov on 17/11/2016.
//  Copyright © 2016 Zalando. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()

@end

@implementation MyViewController

+ (instancetype)create {
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    NSString *path = [bundle pathForResource:@"ProjectABundle" ofType:@"bundle"];
    assert(path);
    NSBundle *projectBundle = [NSBundle bundleWithPath:path];
    UIStoryboard *board = [UIStoryboard storyboardWithName:@"ProjectAMain" bundle:projectBundle];
    MyViewController *controller = (MyViewController *)[board instantiateInitialViewController];
    assert(controller);
    return controller;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
