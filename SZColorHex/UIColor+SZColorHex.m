//
//  UIColor+SZColorHex.m
//  SZColorHex
//
//  Created by Song Zhou on 24/11/2017.
//  Copyright © 2017 Song Zhou. All rights reserved.
//

#import "UIColor+SZColorHex.h"

@implementation UIColor (SZColorHex)

+ (UIColor *)colorFromHex:(NSUInteger)color {
    NSUInteger rmd = 0xFF;
    NSUInteger mask = 0xFF;
    
    CGFloat b = (color & mask ) / (double)rmd;
    CGFloat g = ((color >> 8) & mask) / (double)rmd;
    CGFloat r = ((color >> 16) & mask) / (double)rmd;
    
    return [UIColor colorWithRed:r green:g blue:b alpha:1.0];
}

@end
