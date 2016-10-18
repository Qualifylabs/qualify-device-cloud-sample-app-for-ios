#import <UIKit/UIKit.h>
#import "QLBaseViewController.h"

/**
 *  Main view controller for the native view
 *
 *  Creates the navigation across all of the different native view controllers
 *
 */
@interface NativeViewController : QLBaseViewController <UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@end
