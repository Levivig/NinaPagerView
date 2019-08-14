//
//  UILabel+FontUtility.h
//  xeropan
//
//  Created by Imre Ujlaki on 26/05/15.
//  Copyright (c) 2015 CodeYard. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSString (FontUtility)
- (float)heightForFont:(UIFont *)font width:(float)width;
- (float)widthForFont:(UIFont *)font height:(float)height;
@end
