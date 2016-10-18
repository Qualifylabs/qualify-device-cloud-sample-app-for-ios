#import "ContactAddButtonViewController.h"

@interface ContactAddButtonViewController ()
@property UIButton *contactAddButton;
@end

/**
 *  A add contact controller
 */
@implementation ContactAddButtonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpView];
}

-(void)setUpView{
    _contactAddButton = [UIButton buttonWithType:UIButtonTypeContactAdd];
    _contactAddButton.frame = CGRectZero;
    [_contactAddButton sizeToFit];
    [_contactAddButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self centerView:_contactAddButton];
    [self.view addSubview:_contactAddButton];
}

-(void)buttonPressed:(UIButton*)sender{
    CGRect oldFrame = _contactAddButton.frame;
    [_contactAddButton removeFromSuperview];
    if (sender.buttonType == UIButtonTypeContactAdd) {
        _contactAddButton = [UIButton buttonWithType:UIButtonTypeInfoDark];
    } else {
        _contactAddButton = [UIButton buttonWithType:UIButtonTypeContactAdd];
    }
    _contactAddButton.frame = oldFrame;
    [_contactAddButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_contactAddButton];
}

@end
