#import "SecondViewController.h"
#import "ThirdViewController.h"

static NSString* const NEXT_VIEW_TITLE = @"View 3";
static NSString* const NEXT_VIEW_MESSAGE = @"This is the third view";

@implementation SecondViewController

/**
 *  Goes to the 3rd view controller
 */
-(void)goNext{
    ThirdViewController *thirdVC = [[ThirdViewController alloc] initWithTitle:NEXT_VIEW_TITLE andImage:nil andText:NEXT_VIEW_MESSAGE andIsLast:NO];
    [self.navigationController pushViewController:thirdVC animated:YES];
}

@end
