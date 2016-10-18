#import "CustomWebSiteNavigationViewController.h"
#import "CustomWebSitePickerViewController.h"

@interface CustomWebSiteNavigationViewController ()
@property CustomWebSitePickerViewController *webSitePickerViewController;
@end

/**
 A controller to navigate to a specific web url
 */
@implementation CustomWebSiteNavigationViewController

-(id)initWithTitle:(NSString*)title andImage:(UIImage*)image {
    _webSitePickerViewController = [[CustomWebSitePickerViewController alloc] init];
    self = [super initWithRootViewController:_webSitePickerViewController];
    if (self) {
        self.view.autoresizesSubviews = NO;
        self.navigationController.navigationBar.autoresizesSubviews = NO;
        self.tabBarItem.title = title;
        self.tabBarItem.image = image;
    }
    return self;
}


@end
