//
//  UIColor+SZColorHex.m
//  SZColorHex
//
//  Created by Song Zhou on 24/11/2017.
//  Copyright © 2017 Song Zhou. All rights reserved.
//

#import "UIColor+SZColorHex.h"

NS_ASSUME_NONNULL_BEGIN
@implementation UIColor (SZColorHex)

+ (UIColor *)colorFromHex:(uint32_t)color {
    uint8_t rmd = 0xFF;
    uint8_t mask = 0xFF;
    
    uint8_t step = 8;
    uint8_t length = 3;
    CGFloat rgbs[length];
    
    for (int i = 0; i < length; i++) {
        NSUInteger offSet = step * i;
        CGFloat percent = (color >> offSet & mask) / (double)rmd;
        rgbs[i] = percent;
    }
    
    return [UIColor colorWithRed:rgbs[2] green:rgbs[1] blue:rgbs[0] alpha:1.0];
}

+ (UIColor *)colorFromHexString:(NSString *)hexString {
    unsigned int colorHex = 0;
    NSString *hexValue = hexString;
    
    if ([[hexString lowercaseString] hasPrefix:@"0x"]) {
    } else if ([hexString hasPrefix:@"#"]) {
        hexValue = [hexString substringFromIndex:1];
    }
    
    [[NSScanner scannerWithString:hexValue] scanHexInt:&colorHex];
    
    return [UIColor colorFromHex:colorHex];
}

@end
NS_ASSUME_NONNULL_END
