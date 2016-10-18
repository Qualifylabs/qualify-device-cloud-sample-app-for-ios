#import "DatePickerViewController.h"

@interface DatePickerViewController ()
@property UILabel *dateDisplayLabel;
@property UIDatePicker *datePicker;
@end
static NSString* const DEFAULT_DATE_LABEL_TEXT = @"Please select a date from the date picker";
static NSString* const DATE_LABEL_FORMAT = @"%@";

/**
 *  A date picker controller
 */
@implementation DatePickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpView];
}

-(void)setUpView{
    _dateDisplayLabel = [[UILabel alloc] initWithFrame:
                         CGRectMake(0, [self getTopPositionRounded] + [self getSmallHeightPadding], [self getWidthMinusSmallPadding], 0)];
    [_dateDisplayLabel setText:DEFAULT_DATE_LABEL_TEXT];
    _dateDisplayLabel.numberOfLines = 0;
    [_dateDisplayLabel sizeToFit];
    [self centerViewByWidth:_dateDisplayLabel];
    [self.view addSubview:_dateDisplayLabel];
    
    _datePicker = [[UIDatePicker alloc] initWithFrame:CGRectZero];
    [_datePicker sizeToFit];
    [self centerViewByWidth:_datePicker];
    [self putView:_datePicker belowView:_dateDisplayLabel withPadding:[self getSmallHeightPadding]];
    [self centerViewByWidth:_datePicker];
    
    //Sets the datepicker mode, date, and adds a action
    _datePicker.datePickerMode = UIDatePickerModeDate;
    _datePicker.date = [NSDate date];
    [_datePicker addTarget:self action:@selector(dateChange:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_datePicker];
}

/**
 *  A action when the date picker is changed
 *
 *  @param sender the datepicker
 */
-(void)dateChange:(id)sender{
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    df.dateStyle = NSDateFormatterMediumStyle;
    _dateDisplayLabel.text = [NSString stringWithFormat:DATE_LABEL_FORMAT, [df stringFromDate:_datePicker.date]];
    [_dateDisplayLabel sizeToFit];
    [self centerViewByWidth:_dateDisplayLabel];
}

@end
