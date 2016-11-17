//
//  ViewController.m
//  ProjectA
//
//  Created by Dmitry Bespalov on 17/11/2016.
//  Copyright © 2016 Zalando. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

+ (instancetype)create {
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    NSString *path = [bundle pathForResource:@"ProjectABundle" ofType:@"bundle"];
    assert(path);
    NSBundle *projectBundle = [NSBundle bundleWithPath:path];
    UIStoryboard *board = [UIStoryboard storyboardWithName:@"ProjectAMain" bundle:projectBundle];
    ViewController *controller = (ViewController *)[board instantiateInitialViewController];
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
