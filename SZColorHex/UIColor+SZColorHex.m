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
    
    NSUInteger step = 8;
    NSUInteger length = 3;
    CGFloat r, g, b;
    r = g = b = 0;
    for (int i = 0; i < length; i++) {
        NSUInteger offSet = step * i;
        CGFloat percent = (color >> offSet & mask) / (double)rmd;
        switch (i) {
            case 0: {
                b = percent;
                break;
            }
            case 1: {
                g = percent;
                break;
            }
            case 2: {
                r = percent;
            }
        }
    }
    
    return [UIColor colorWithRed:r green:g blue:b alpha:1.0];
}

@end
