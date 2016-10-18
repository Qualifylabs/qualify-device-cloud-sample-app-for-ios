#import "InputTextFieldViewController.h"

@interface InputTextFieldViewController ()
@property UITextField *textField;
@end

static NSString* const TEXT_FIELD_PLACEHOLDER_TEXT = @"text field";

/**
 *  A controller for a input field
 */
@implementation InputTextFieldViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpView];
}

-(void)setUpView{
    _textField = [[UITextField alloc] initWithFrame:
                  CGRectMake(0, [self getTopPositionRounded] + [self getSmallHeightPadding], [self getWidthMinusSmallPadding], [self getDefaultTextfieldHeight])];
    [self centerViewByWidth:_textField];
    _textField.borderStyle = UITextBorderStyleRoundedRect;
    _textField.placeholder = TEXT_FIELD_PLACEHOLDER_TEXT;
    [self.view addSubview:_textField];
}

@end
