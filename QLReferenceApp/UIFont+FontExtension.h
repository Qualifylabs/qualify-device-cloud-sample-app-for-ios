#import <UIKit/UIKit.h>

/**
 *  A convenience class for a uniform font style/size within the app
 */
@interface UIFont (FontExtension)
FOUNDATION_EXPORT NSString *const DEFAULT_FONT_NAME;
FOUNDATION_EXPORT NSString *const DEFAULT_BOLD_NAME;

+ (UIFont*)defaultFontAtSize:(CGFloat)size;
+ (UIFont*)defaultBoldFontAtSize:(CGFloat)size;
+ (UIFont*)smallFont;
+ (UIFont*)mediumFont;
+ (UIFont*)largeFont;
+ (UIFont*)smallBoldFont;
+ (UIFont*)mediumBoldFont;
+ (UIFont*)largeBoldFont;
@end
