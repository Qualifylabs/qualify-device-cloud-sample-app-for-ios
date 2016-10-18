#import "TextViewController.h"

@interface TextViewController ()
@property UITextView *textView;
@end
static NSString* const TEXTVIEW_DEFAULT_TEXT = @"It's a textview.";

/**
 *  A text input controller
 */
@implementation TextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpView];
}

-(void)setUpView{
    _textView = [[UITextView alloc] initWithFrame:
                 CGRectMake(0, [self getTopPositionRounded] + [self getSmallHeightPadding], [self getWidthMinusSmallPadding], self.view.bounds.size.height / 3)];
    [_textView setText:TEXTVIEW_DEFAULT_TEXT];
    [self centerViewByWidth:_textView];
    [self.view addSubview:_textView];
}

@end
