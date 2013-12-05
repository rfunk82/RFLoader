//
//  RFLoader.h
//  RFLoader
//
//  Created by Ricardo Funk on 12/3/13.
//  Copyright (c) 2013 Ricardo Funk. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum Loader : NSUInteger {
    LoaderHorizontal,
    LoaderVertical,
    LoaderMix
} Loader;

@interface RFLoader : UIView
/**
 * Show a loading animation
 * @param UIColor: [UIColor whiteColor]
 * @param Loader: LoaderHorizontal, LoaderVertical, or LoaderMix
 * @return UIView
 */
-(void) showLoaderWithColor:(UIColor *)color andAnimation:(Loader)animation andImage:(NSString *)imageName onView:(UIView *)currentView;
/**
 * Remove loading animation with success or failure
 */
-(void)showDotLoaderWithColor:(UIColor *)color onView:(UIView *)currentView;
/**
 * Remove loading animation
 */
-(void)removeLoader;
/**
 * Remove loading animation with success or failure
 */
-(void)removeLoaderWithSuccess:(BOOL)success;

@end
