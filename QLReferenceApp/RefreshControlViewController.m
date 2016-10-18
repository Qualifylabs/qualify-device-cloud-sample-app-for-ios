#import "RefreshControlViewController.h"

@interface RefreshControlViewController ()
@property UILabel *timeDisplay;
@property UIRefreshControl *refreshControl;
@property UIScrollView *scrollView;
@end

static NSString* const TEXT_FIELD_PLACEHOLDER_TEXT = @"Refresh to get the time";

/**
 *  A controller for a refresh control view controller
 */
@implementation RefreshControlViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpView];
}

-(void)setUpView{
    _timeDisplay = [[UILabel alloc] initWithFrame:
                    CGRectMake(0, [self getTopPositionRounded] + [self getLargeHeightPadding], [self getWidthMinusSmallPadding], 0)];
    _timeDisplay.text = TEXT_FIELD_PLACEHOLDER_TEXT;
    [_timeDisplay sizeToFit];
    [self centerViewByWidth:_timeDisplay];
    
    _scrollView = [[UIScrollView alloc] initWithFrame:
                   CGRectMake(0, [self getTopPosition], self.view.frame.size.width, self.view.frame.size.height)];
    
    _refreshControl = [[UIRefreshControl alloc] init];
    [_refreshControl addTarget:self action:@selector(refreshEvent:) forControlEvents:UIControlEventValueChanged];
    _scrollView.showsVerticalScrollIndicator = NO;
    [_scrollView addSubview:_refreshControl];
    [self.view addSubview:_scrollView];
    [self.view addSubview:_timeDisplay];
}

/**
 *  Sets the view larger so you have space to pull to swipe down
 */
-(void)viewWillLayoutSubviews{
    _scrollView.contentSize = CGSizeMake(self.view.frame.size.width, self.view.frame.size.height+88);
}

/**
 *  A event for when the refresh occurs 
 *
 *  Gets the current time and sets it to the display
 *
 *  @param refreshControl the refresh control
 */
-(void)refreshEvent:(UIRefreshControl *)refreshControl{
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setTimeStyle:NSDateFormatterLongStyle];
    _timeDisplay.text = [df stringFromDate:[NSDate date]];
    
    [_timeDisplay sizeToFit];
    [self centerViewByWidth:_timeDisplay];

    [refreshControl endRefreshing];
}

@end
