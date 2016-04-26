//
//  SRDumyView.h
//  DumyView
//
//  Created by SarielTang on 15/11/16.
//  Copyright © 2015年 Sariel. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SRDumyView;
@protocol SRDumyViewDelegate <NSObject>

- (void)dumyViewDidTaped:(SRDumyView *)view;

@end

@interface SRDumyView : UIView

@property (nonatomic,weak)id<SRDumyViewDelegate> delegate;

- (void)show;

- (void)dismiss;

@end
