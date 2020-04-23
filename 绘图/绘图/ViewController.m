//
//  ViewController.m
//  绘图
//
//  Created by yuanshi on 2020/4/22.
//  Copyright © 2020 yuanshi. All rights reserved.
//

#import "ViewController.h"
#import "VideoView.h"
#import "TestView.h"
@interface ViewController ()
@property (nonatomic,strong) VideoView *videoView;
@property (nonatomic,strong) TestView *testView;
@property (nonatomic,assign) int k;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.videoView];
    
//    [self.view addSubview:self.testView];
    
    
    
//    [self.view setNeedsDisplay];
}

- (VideoView *)videoView {
    
    if (!_videoView) {
        _videoView = [[VideoView alloc] initWithFrame:CGRectMake(30, 100, 200, 200)];
        _videoView.backgroundColor = [UIColor yellowColor];
    }
    return _videoView;
}

- (TestView *)testView {
    if (!_testView) {
        _testView = [[TestView alloc] initWithFrame:CGRectMake(30, 100, 200, 200)];
        _testView.backgroundColor = [UIColor yellowColor];
    }
    return _testView;
}


@end
