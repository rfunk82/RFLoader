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
    BOOL image;
    UIColor *selectedColor;
    UIView *selectedView;
}

static RFLoader *sharedInstance;

+ (RFLoader*)getInstance {
	
	@synchronized(self) {
		if(!sharedInstance) {
            sharedInstance = [[RFLoader alloc] init];
		}
	}
	
	return sharedInstance;
}

-(void) showLoaderWithColor:(UIColor *)color andAnimation:(Loader)animation andImage:(NSString *)imageName onView:(UIView *)currentView {
    
    if (loader) {
        [loader removeFromSuperview];
    }
  
    imageName = [NSString stringWithFormat:@"%@",imageName];
    loader = [[UIView alloc] initWithFrame:CGRectMake(160-25, 240-25, 50, 50)];
    selectedView = currentView;
    
    if (![imageName isEqualToString:@"(null)"]) {
        
        image = YES;
        UIImage *customImage = [UIImage imageNamed:imageName];
        UIImageView *customImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        customImageView.image = customImage;
        [loader addSubview:customImageView];
        
    } else {
 
        image = NO;
        [loader setBackgroundColor:color];
        selectedColor = color;
        loader.layer.cornerRadius = 25;
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
    
    [currentView addSubview:loader];
    [currentView bringSubviewToFront:loader];
        
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

-(void)removeLoaderWithSuccess:(BOOL)success {
    
    UILabel  *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    [label setFont:[UIFont fontWithName:@"AmericanTypewriter-Bold" size:40]];
    label.backgroundColor = [UIColor clearColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor=[UIColor whiteColor];

    if (loader) {
         [loader removeFromSuperview];
    }
    
    if (success) {
        label.text = @"✓";
        if (image) {
            
        } else {
            loader = [[UIView alloc] initWithFrame:CGRectMake(160-25, 240-25, 50, 50)];
            [loader setBackgroundColor:selectedColor];
            loader.layer.cornerRadius = 25;
            loader.clipsToBounds = YES;
            [loader addSubview:label];
            [loader setBackgroundColor:[UIColor greenColor]];
            
            [selectedView addSubview:loader];
            [selectedView bringSubviewToFront:loader];
            
            [UIView animateWithDuration:1.0 animations:^{
                loader.alpha = 0;
            } completion:^(BOOL finished) {
                [loader removeFromSuperview];
            }];
        }
    } else {
        label.text = @"X";
        if (image) {
            
        } else {
            loader = [[UIView alloc] initWithFrame:CGRectMake(160-25, 240-25, 50, 50)];
            [loader setBackgroundColor:selectedColor];
            loader.layer.cornerRadius = 25;
            loader.clipsToBounds = YES;
            [loader addSubview:label];
            [loader setBackgroundColor:[UIColor redColor]];
            
            [selectedView addSubview:loader];
            [selectedView bringSubviewToFront:loader];
            
            [UIView animateWithDuration:1.0 animations:^{
                loader.alpha = 0;
            } completion:^(BOOL finished) {
                [loader removeFromSuperview];
            }];
        }
    }
    
//    if (loader) {
//        [UIView animateWithDuration:1.0 animations:^{
//            loader.alpha = 0;
//        } completion:^(BOOL finished) {
//            [loader removeFromSuperview];
//        }];
//        
//    }
}



@end
