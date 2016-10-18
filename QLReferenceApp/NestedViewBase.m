#import "NestedViewBase.h"
@interface NestedViewBase ()
@property UILabel *textLabel;
@property NSString *text;
@property NSString *pageTitle;
@end

/**
 *  The nested view base controller
 */
@implementation NestedViewBase
static NSString* const NEXT_BUTTON_TEXT = @"Next";

#pragma mark - Controller Methods
-(id)initWithTitle:(NSString *)title andImage:(UIImage *)image andText:(NSString*)text andIsLast:(BOOL)last{
    self = [super initWithTitle:title andImage:image];
    if (self) {
        _text = text;
        if (!last) {
            UIBarButtonItem *nextButton = [[UIBarButtonItem alloc] initWithTitle:NEXT_BUTTON_TEXT style:UIBarButtonItemStyleBordered target:self action:@selector(goNext)];
            self.navigationItem.rightBarButtonItem = nextButton;
        }
    }
    return self;
}

-(id)initWithTitle:(NSString *)title andImage:(UIImage *)image{
    self = [super init];
    if (self) {
        _pageTitle = title;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpView];
}

-(void)setUpView{
    self.navigationItem.title = _pageTitle;
    _textLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    _textLabel.text = _text;
    _textLabel.font = [UIFont defaultFontAtSize:27];
    _textLabel.textAlignment = NSTextAlignmentCenter;
    [_textLabel sizeToFit];
    [self centerViewByHeight:_textLabel];
    [self centerViewByWidth:_textLabel];
    [self.view addSubview:_textLabel];
}

/**
 *  Goes to the next controller
 */
-(void)goNext{
}
@end
