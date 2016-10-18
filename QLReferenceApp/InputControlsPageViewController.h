#import <UIKit/UIKit.h>
#import "QLBaseViewController.h"

/**
 *  The page control for the input controls
 */
@interface InputControlsPageViewController : QLBaseViewController <UIPageViewControllerDataSource>
@property (strong, nonatomic) UIPageViewController *pageController;

@end
