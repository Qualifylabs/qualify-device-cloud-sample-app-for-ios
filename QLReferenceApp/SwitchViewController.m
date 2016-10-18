#import "SwitchViewController.h"

@interface SwitchViewController ()
@property UISwitch *switchControl;
@end

/**
 *  A controller for a switch control
 */
@implementation SwitchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpView];
}

-(void)setUpView{
    self.view.backgroundColor = [UIColor flatWetAsphalt];
    _switchControl = [[UISwitch alloc] initWithFrame:CGRectZero];
    [_switchControl sizeToFit];
    [self centerView:_switchControl];
    [_switchControl addTarget:self action:@selector(switchFlipped:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_switchControl];
}

/**
 *  A switch action (changes the view's background color)
 *
 *  @param controller the switch
 */
-(void)switchFlipped:(UISwitch*)controller{
    if ([controller isOn]) {
        self.view.backgroundColor = [UIColor flatYellow];
        return;
    }
    
    self.view.backgroundColor = [UIColor flatWetAsphalt];
}
@end
