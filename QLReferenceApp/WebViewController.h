#import <UIKit/UIKit.h>
#import "QLBaseViewController.h"

/**
 *  A controller to test a web view
 */
@interface WebViewController : QLBaseViewController <UIWebViewDelegate>
-(id)initWithURL:(NSURL*)url;
-(id)initWithTitle:(NSString *)title andImage:(UIImage *)image andURL:(NSURL*)url;
@end
