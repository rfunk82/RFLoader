//
//  RFLoader.m
//  RFLoader
//
//  Created by Ricardo Funk on 12/3/13.
//  Copyright (c) 2013 Ricardo Funk. All rights reserved.
//

#import "RFLoader.h"



@implementation RFLoader {
    UIView *loader;
}

-(UIView *) showLoaderWithColor:(UIColor *)color andAnimation:(Loader)animation andImage:(NSString *)imageName {
    
    if (loader) {
        [loader removeFromSuperview];
    }
  
    imageName = [NSString stringWithFormat:@"%@",imageName];
    loader = [[UIView alloc] initWithFrame:CGRectMake(160-12.5, 240-12.5, 25, 25)];
    
    if (![imageName isEqualToString:@"(null)"]) {
        
        
        UIImage *customImage = [UIImage imageNamed:imageName];
        UIImageView *customImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 25, 25)];
        customImageView.image = customImage;
        [loader addSubview:customImageView];
        
    } else {
 
        [loader setBackgroundColor:color];
        loader.layer.cornerRadius = 12.5f;
        loader.clipsToBounds = YES;
    }
    
    
    if (animation == 0 ) {
        CABasicAnimation* animationX = [CABasicAnimation animationWithKeyPath:@"transform.rotation.x"];
        animationX.fromValue = [NSNumber numberWithFloat:100.0f];
        animationX.toValue = [NSNumber numberWithFloat: 50.0f];
        animationX.duration = 10.0f;
        animationX.repeatCount = INFINITY;
        [loader.layer addAnimation:animationX forKey:@"SpinAnimationX"];
    } else if (animation == 1) {
        CABasicAnimation* animationY = [CABasicAnimation animationWithKeyPath:@"transform.rotation.y"];
        animationY.fromValue = [NSNumber numberWithFloat:100.0f];
        animationY.toValue = [NSNumber numberWithFloat: 50.0f];
        animationY.duration = 10.0f;
        animationY.repeatCount = INFINITY;
        [loader.layer addAnimation:animationY forKey:@"SpinAnimationY"];
    } else {
        CABasicAnimation* animationY = [CABasicAnimation animationWithKeyPath:@"transform.rotation.y"];
        animationY.fromValue = [NSNumber numberWithFloat:100.0f];
        animationY.toValue = [NSNumber numberWithFloat: 50.0f];
        animationY.duration = 10.0f;
        animationY.repeatCount = INFINITY;
        [loader.layer addAnimation:animationY forKey:@"SpinAnimationY"];
        
        CABasicAnimation* animationX = [CABasicAnimation animationWithKeyPath:@"transform.rotation.x"];
        animationX.fromValue = [NSNumber numberWithFloat:100.0f];
        animationX.toValue = [NSNumber numberWithFloat: 50.0f];
        animationX.duration = 10.0f;
        animationX.repeatCount = INFINITY;
        [loader.layer addAnimation:animationX forKey:@"SpinAnimationX"];
    }
    
    return loader;
        
}

-(void)removeLoader {
    if (loader) {
        [UIView animateWithDuration:1.0 animations:^{
            loader.alpha = 0;
        } completion:^(BOOL finished) {
             [loader removeFromSuperview];
        }];
       
    }
}


@end
