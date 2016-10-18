#import "NativeViewCollectionViewCell.h"
#import "UIColor+ColorExtension.h"
#import "UIFont+FontExtension.h"

/**
 The cell for the native navigation 
 */
@implementation NativeViewCollectionViewCell
-(id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    
    if (self) {
        
        self.cellTitle = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
        self.cellTitle.textColor = [UIColor whiteColor];
        self.cellTitle.backgroundColor = [UIColor flatDarkBlue];
        self.cellTitle.textAlignment = NSTextAlignmentCenter;
        self.cellTitle.font = [UIFont mediumFont];
        self.cellTitle.numberOfLines = 0;
        
        [self.contentView addSubview:self.cellTitle];
    }
    
    return self;
}
@end
