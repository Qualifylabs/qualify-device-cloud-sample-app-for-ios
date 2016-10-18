#import "NativeViewMenuNavigationViewController.h"
#import "NativeViewController.h"

@interface NativeViewMenuNavigationViewController ()

@end

/**
 The native view menu navigation controller
 */
@implementation NativeViewMenuNavigationViewController

-(id)initWithTitle:(NSString*)title andImage:(UIImage*)image{
    NativeViewController *rootVC = [[NativeViewController alloc] init];
    self = [super initWithRootViewController:rootVC];
    if (self) {
        self.view.backgroundColor = [UIColor whiteColor];
        self.tabBarItem.title = title;
        self.tabBarItem.image = image;
        self.view.autoresizesSubviews = NO;
        self.navigationController.navigationBar.autoresizesSubviews = NO;
    }
    return self;
}

@end
