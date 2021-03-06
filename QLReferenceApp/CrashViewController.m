#import "CrashViewController.h"

/**
 *  A controller for the crash page
 *
 *  Used to test fuzz testing and to handle expected errors. 
 *
 */
@interface CrashViewController ()
@property UIButton *crashButton;
@property UILabel *crashLabel;
@end

static NSString* const LABEL_MESSAGE = @"Pressing this button will crash the app!";
static NSString* const IMAGE_NAME = @"ic_warning_white_48pt";
@implementation CrashViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self InitComponents];
    [self configureComponents];
    [self displayComponents];
}

/**
 *  Creates the components for the crash page
 */
-(void)InitComponents {
    _crashLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, [self getTopPositionRounded] + [self getSmallHeightPadding], [self getWidthMinusSmallPadding], 0)];

    _crashButton = [[UIButton alloc] initWithFrame:[self frameFromCGPoint:CGPointZero AndCGSize:[self getLargeSquareSize]]];
}

#pragma mark - Configure Methods
/**
 *  Configures the crash page components
 */
-(void)configureComponents{
    _crashLabel.numberOfLines = 0;
    _crashLabel.text = LABEL_MESSAGE;
    _crashLabel.font = [UIFont largeFont];
    _crashLabel.textAlignment = NSTextAlignmentCenter;

    [_crashLabel sizeToFit];

    [_crashButton.imageView setContentMode:UIViewContentModeScaleAspectFill];
    [_crashButton setImage:[UIImage imageNamed:IMAGE_NAME] forState:UIControlStateNormal];
    [_crashButton addTarget:self action:@selector(crashButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    _crashButton.backgroundColor = [UIColor flatDarkRed];
}

/**
 *  Displays all of the components on the screen
 */
-(void)displayComponents{
    [self centerViewByWidth:_crashLabel];
    [self centerViewByWidth:_crashButton];
    
    [self putView:_crashButton belowView:_crashLabel withPadding:[self getLargeHeightPadding]];
    
    [self.view addSubview:_crashLabel];
    [self.view addSubview:_crashButton];
}

/**
 *  Crashes the app with a null pointer
 *
 *  @param button the crash button
 */
-(void)crashButtonPressed:(UIButton*)button {
    int *x = NULL;
    *x = 69;
}

@end
