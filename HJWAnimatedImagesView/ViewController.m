//
//  ViewController.m
//  HJWAnimatedImagesView
//
//  Created by Lion_Lemon on 16/8/19.
//  Copyright © 2016年 Lion_Lemon. All rights reserved.
//

#import "ViewController.h"
#import "HJWAnimatedImagesView.h"

@interface ViewController ()<hjw_AnimatedImagesViewDelegate>
@property (nonatomic, strong) HJWAnimatedImagesView * animatedImagesView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.animatedImagesView = [[HJWAnimatedImagesView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width,
                                                        self.view.bounds.size.height)];
    [self.view addSubview:self.animatedImagesView];
    self.animatedImagesView.delegate = self;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.animatedImagesView startAnimating];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [self.animatedImagesView startAnimating];
}

- (NSUInteger)animatedImagesNumberOfImages:(HJWAnimatedImagesView *)animatedImagesView {
    return 2;
}

- (UIImage *)animatedImagesView:(HJWAnimatedImagesView *)animatedImagesView imageAtIndex:(NSUInteger)index {
    return [UIImage imageNamed:@"login_background.png"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
