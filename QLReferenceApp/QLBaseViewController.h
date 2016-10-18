#import <UIKit/UIKit.h>
#import "UIColor+ColorExtension.h"
#import "UIFont+FontExtension.h"

/**
 *  A base controller for the view controllers within the app.
 *
 * Contains app specific defaults and convienience methods
 */
@interface QLBaseViewController : UIViewController
-(id)initWithTitle:(NSString*)title andImage:(UIImage*)image;
-(void)subtractTabBarHeightFromFrame:(UIView*)view;
-(void)putView:(UIView*)bottom belowView:(UIView*)topView withPadding:(CGFloat)padding;
-(CGRect)frameFromCGPoint:(CGPoint)point AndCGSize:(CGSize)frameSize;
-(void)centerViewByWidth:(UIView*)givenView;
-(void)centerViewByHeight:(UIView*)givenView;
-(void)centerView:(UIView*)givenView;
-(void)fillScreenWithView:(UIView*)givenView;
-(void)putViewBelowStatusBar:(UIView*)givenView;
-(CGFloat)getStatusBarHeight;
-(CGFloat)getTabBarHeight;
-(CGFloat)getNavigationBarHeight;
-(CGFloat)getSmallWidthPadding;
-(CGFloat)getLargeWidthPadding;
-(CGFloat)getMicroHeightPadding;
-(CGFloat)getSmallHeightPadding;
-(CGFloat)getLargeHeightPadding;
-(CGFloat)getWidthMinusSmallPadding;
-(CGFloat)getWidthMinusLargePadding;
-(CGSize) getSmallSquareSize;
-(CGSize) getLargeSquareSize;
-(CGSize)makeSquareSize:(CGFloat)size;
-(CGFloat)getDefaultTextfieldHeight;
-(CGFloat)getTopPosition;
-(CGFloat)getTopPositionRounded;
-(CGSize)calculateMovieAspectRatioSize;
-(void)putViewAtBottom:(UIView*)givenView withPadding:(CGFloat)padding;
@end
