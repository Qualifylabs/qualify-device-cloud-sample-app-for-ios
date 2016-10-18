#import "SubmitButtonViewController.h"

@interface SubmitButtonViewController ()
@property UIButton *submitButton;
@end
static NSString * const SUBMIT_BUTTON_TEXT = @"Submit";

/**
 *  The submit button (changes the buttons color when pressed)
 */
@implementation SubmitButtonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _submitButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _submitButton.frame = [self frameFromCGPoint:CGPointZero AndCGSize:[self getLargeSquareSize]];
    [_submitButton setTitle:SUBMIT_BUTTON_TEXT forState:UIControlStateNormal];
    _submitButton.titleLabel.font = [UIFont largeFont];
    [_submitButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];

    _submitButton.backgroundColor = [UIColor flatGreen];
    [_submitButton addTarget:self action:@selector(submitButtonPressed:) forControlEvents:UIControlEventTouchDown];
    [_submitButton addTarget:self action:@selector(submitButtonReleased:) forControlEvents:UIControlEventTouchUpInside];
    [self centerView:_submitButton];
    [self.view addSubview:_submitButton];
}

/**
 *  Changes the button color when pressed
 *
 *  @param sender the button
 */
-(void)submitButtonPressed:(UIButton*)sender{
    _submitButton.backgroundColor = [UIColor flatDarkRed];
}

/**
 *  Changes the button's color to origional when released
 *
 *  @param sender the button
 */
-(void)submitButtonReleased:(UIButton*)sender{
    _submitButton.backgroundColor = [UIColor flatGreen];
}

@end
