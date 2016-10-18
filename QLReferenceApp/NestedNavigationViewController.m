#import "NestedNavigationViewController.h"
#import "FirstViewController.h"

static NSString* const NEXT_VIEW_TITLE = @"View 1";
static NSString* const NEXT_VIEW_MESSAGE = @"This is the first view";

/**
 Creates the first view controller
 */
@implementation NestedNavigationViewController

-(id)initWithTitle:(NSString*)title andImage:(UIImage*)image{
    FirstViewController *firstVC = [[FirstViewController alloc] initWithTitle:NEXT_VIEW_TITLE andImage:nil andText:NEXT_VIEW_MESSAGE andIsLast:NO];
    self = [super initWithRootViewController:firstVC];
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
