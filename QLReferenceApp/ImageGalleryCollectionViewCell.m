#import "ImageGalleryCollectionViewCell.h"

/**
 Image gallery view controller cell that contains a image view
 */
@implementation ImageGalleryCollectionViewCell
-(id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    
    if (self) {
        self.contentView.backgroundColor = [UIColor whiteColor];
        self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.contentView.frame.size.width, self.contentView.frame.size.height)];
        
        [self.contentView addSubview:self.imageView];
    }
    return self;
}
@end
