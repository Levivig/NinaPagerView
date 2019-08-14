//
//  NSString+FontUtility.m
//  xeropan
//
//  Created by Imre Ujlaki on 26/05/15.
//  Copyright (c) 2015 CodeYard. All rights reserved.
//

#import "NSString+FontUtility.h"

@implementation NSString (FontUtility)

- (float)heightForFont:(UIFont *)font width:(float)width {
    NSDictionary *attributes = @{NSFontAttributeName: font};
    CGRect rect = [self boundingRectWithSize:CGSizeMake(width, CGFLOAT_MAX)
                                     options:NSStringDrawingUsesLineFragmentOrigin
                                  attributes:attributes
                                     context:nil];
    return rect.size.height+18.0f;
}
- (float)widthForFont:(UIFont *)font height:(float)height {
    NSDictionary *attributes = @{NSFontAttributeName: font};
    CGRect rect = [self boundingRectWithSize:CGSizeMake(CGFLOAT_MAX, height)
                                     options:NSStringDrawingUsesLineFragmentOrigin
                                  attributes:attributes
                                     context:nil];
    return rect.size.width;
}
@end
