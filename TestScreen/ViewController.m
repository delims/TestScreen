//
//  ViewController.m
//  TestScreen
//
//  Created by delims on 2019/5/22.
//  Copyright © 2019 delims. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,strong) NSArray *colors;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [UIApplication sharedApplication].statusBarHidden = YES;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(changeColor:)];
    [self.view addGestureRecognizer:tap];
    
    self.colors = @[[UIColor grayColor],[UIColor blackColor],[UIColor redColor],[UIColor greenColor],[UIColor blueColor],[UIColor yellowColor],[UIColor lightTextColor]];

}
int i = 0;
- (void)changeColor:(UITapGestureRecognizer*)tap
{
    
    self.view.backgroundColor = self.colors[i++ % self.colors.count];
    
}

@end
