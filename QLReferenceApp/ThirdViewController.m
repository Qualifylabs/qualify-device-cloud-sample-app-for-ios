#import "ThirdViewController.h"
#import "FourthViewController.h"

static NSString* const NEXT_VIEW_TITLE = @"View 4";
static NSString* const NEXT_VIEW_MESSAGE = @"This is the fourth view";

@implementation ThirdViewController

/**
 *  Goes to the 4th view controller
 */
-(void)goNext{
    FourthViewController *fourthVC = [[FourthViewController alloc] initWithTitle:NEXT_VIEW_TITLE andImage:nil andText:NEXT_VIEW_MESSAGE andIsLast:YES];
    [self.navigationController pushViewController:fourthVC animated:YES];
}

@end
