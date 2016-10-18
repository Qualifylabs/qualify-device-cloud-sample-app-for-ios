#import "HomePageViewController.h"

/**
 *  A static homepage for the app
 *
 *  Contains the app name and version number
 */
@interface HomePageViewController ()
@property UILabel *homepageTitle;
@property UILabel *versionNumber;
@end

static NSString* const HOME_PAGE_TITLE = @"Qualify Labs Reference Application";
static NSString* const HOME_PAGE_VERSION_NUMBER = @"v1.0";

@implementation HomePageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpView];
}

/**
 *  Configures and creates view
 */
-(void)setUpView{
    _homepageTitle = [[UILabel alloc] initWithFrame:[self frameFromCGPoint:CGPointMake(0, [self getTopPositionRounded] + [self getSmallHeightPadding]) AndCGSize:CGSizeMake([self getWidthMinusLargePadding], 0)]];
    
    _versionNumber = [[UILabel alloc] initWithFrame:[self frameFromCGPoint:CGPointZero AndCGSize:CGSizeMake([self getWidthMinusLargePadding], 0)]];
    
    [self configureLabel:_homepageTitle withText:HOME_PAGE_TITLE];
    [self configureLabel:_versionNumber withText:HOME_PAGE_VERSION_NUMBER];

    [self centerViewByWidth:_versionNumber];
    [self centerViewByWidth:_homepageTitle];

    [self putView:_versionNumber belowView:_homepageTitle withPadding:[self getSmallHeightPadding]];
    
    [self.view addSubview:_homepageTitle];
    [self.view addSubview:_versionNumber];
}

/**
 *  Configures label
 *
 *  @param label   the label to configure
 *  @param content the content of the label
 */
-(void)configureLabel:(UILabel*)label withText:(NSString*)content{
    label.font = [UIFont largeBoldFont];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = content;
    [label sizeToFit];
}

@end
