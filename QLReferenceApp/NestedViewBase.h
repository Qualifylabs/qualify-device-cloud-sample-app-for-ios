#import <UIKit/UIKit.h>
#import "QLBaseViewController.h"

/**
 *  The nested view base controller
 */
@interface NestedViewBase : QLBaseViewController
-(id)initWithTitle:(NSString *)title andImage:(UIImage *)image andText:(NSString*)text andIsLast:(BOOL)last;
@end
