#import "ScrollOutOfViewViewController.h"

@interface ScrollOutOfViewViewController ()
@property UILabel *label;
@end

static NSString* const HIDDENT_TEXT = @"This is hidden text";

/**
 *  Scroll out of view view controller
 */
@implementation ScrollOutOfViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpView];
}

/**
 *  Creates a label that is positioned 2 times the size of the frame height
 */
-(void)setUpView{
    _label = [[UILabel alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height * 2, 0, 0)];
    _label.text = HIDDENT_TEXT;
    [_label sizeToFit];
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.frame];
    scrollView.contentSize = CGSizeMake(self.view.frame.size.width, _label.frame.origin.y + _label.frame.size.height);
    [scrollView addSubview:_label];
    [self.view addSubview:scrollView];
}

@end
