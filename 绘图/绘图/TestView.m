//
//  TestView.m
//  绘图
//
//  Created by yuanshi on 2020/4/22.
//  Copyright © 2020 yuanshi. All rights reserved.
//

#import "TestView.h"

@implementation TestView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc ] initWithTarget:self action:@selector(move:)];
        [self addGestureRecognizer:pan];
    }
    return self;
}
 
 
- (void)drawRect:(CGRect)rect {
    // Drawing code
     UIBezierPath *path = [UIBezierPath bezierPath];
    
    [path moveToPoint:CGPointMake(self.pxStart, self.pyStart)];//这是起点
    
//    [path addQuadCurveToPoint:CGPointMake(300, 150) controlPoint:CGPointMake(50, 30)];//设置终点和控制点
    [path addLineToPoint:CGPointMake(self.px + self.pxStart, self.py + self.pyStart)];
    path.lineWidth =2;
    
    UIColor *color = [UIColor orangeColor];
    [color set];
    
    [path stroke];
    
}
 

- (void)color {
    
       UIBezierPath *path = [UIBezierPath bezierPath];
    
    [path moveToPoint:CGPointMake(50, 150)];//这是起点
    
//    [path addQuadCurveToPoint:CGPointMake(300, 150) controlPoint:CGPointMake(50, 30)];//设置终点和控制点
    [path addLineToPoint:CGPointMake(self.px, self.py)];
    path.lineWidth =2;
    
    UIColor *color = [UIColor orangeColor];
    [color set];
    
    [path stroke];
    [self setNeedsDisplay];
}

- (void)move:(UIPanGestureRecognizer *)gesture {
    UIGestureRecognizerState state = gesture.state;
    
    switch (state) {
        case UIGestureRecognizerStateBegan:
        {
            NSLog(@"UIGestureRecognizerStateBegan");
            self.pxStart = [gesture translationInView:self].x;
            self.pyStart = [gesture translationInView:self].y;
        }
            break;
        case UIGestureRecognizerStateEnded:
        {
            NSLog(@"UIGestureRecognizerStateEnded");
        }
            break;
        case UIGestureRecognizerStateChanged:
        {
            CGPoint translation = [gesture translationInView:self];
            self.px = translation.x;
            self.py = translation.y;
             [self setNeedsDisplay];
            
        }
            break;
            
        default:
            break;
    }
    
}

@end
