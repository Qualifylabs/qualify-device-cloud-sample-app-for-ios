#import "FirstViewController.h"
#import "SecondViewController.h"


static NSString* const NEXT_VIEW_TITLE = @"View 2";
static NSString* const NEXT_VIEW_MESSAGE = @"This is the second view";
@implementation FirstViewController

/**
 *  Goes to the second view controller
 */
-(void)goNext{
    SecondViewController *secondVC = [[SecondViewController alloc] initWithTitle:NEXT_VIEW_TITLE andImage:nil andText:NEXT_VIEW_MESSAGE andIsLast:NO];
    [self.navigationController pushViewController:secondVC animated:YES];
}



@end
