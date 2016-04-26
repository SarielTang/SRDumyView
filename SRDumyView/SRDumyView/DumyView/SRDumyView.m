//
//  SRDumyView.m
//  DumyView
//
//  Created by SarielTang on 15/11/16.
//  Copyright © 2015年 Sariel. All rights reserved.
//

#import "SRDumyView.h"

@implementation SRDumyView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor colorWithWhite:0.000 alpha:0.400];
        self.alpha = 0.0;
    }
    return self;
}

- (void)show {
    [UIView animateWithDuration:0.5 animations:^{
        self.alpha = 1.0;
    }];
}

- (void)dismiss {
    [UIView animateWithDuration:0.5 animations:^{
        self.alpha = 0.0;
    }];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    NSLog(@"%s",__FUNCTION__);
    if ([self.delegate respondsToSelector:@selector(dumyViewDidTaped:)]) {
        [self.delegate dumyViewDidTaped:self];
    }
}

//-(id)hitTest:(CGPoint)point withEvent:(UIEvent *)event
//{
//    UIView *hitView = [super hitTest:point withEvent:event];
//    if (hitView == self)
//    {
//        NSLog(@"--- dumyView");
//        return hitView;
//    }
//    else
//    {
//        NSLog(@"%@",hitView);
//        return hitView;
//    }
//}

@end
