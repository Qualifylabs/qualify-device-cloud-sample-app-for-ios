#import "ImageGalleryViewController.h"
#import "ImageGalleryCollectionViewCell.h"
#import "UIColor+ColorExtension.h"

@interface ImageGalleryViewController ()
@property NSArray *photoFileArray;
@property NSString *directoryPath;
@property UICollectionView *collectionView;
@end

static NSString* const DIRECTORY_PATH = @"Pictures";
static NSString* const NAVIGATION_TITLE = @"Image Gallery";
static NSString* const CELL_IDENTIFIER = @"galleryCellIdentifier";
@implementation ImageGalleryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadPictures];
    [self setUpView];
}

/**
 *  Loads pictures from the specified directory
 */
-(void)loadPictures{
    _directoryPath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:DIRECTORY_PATH];
    _photoFileArray = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:_directoryPath error:NULL];
}

-(void)setUpView{
    self.navigationItem.title = NAVIGATION_TITLE;
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    _collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
    [self fillScreenWithView:_collectionView];
    _collectionView.dataSource = self;
    _collectionView.delegate = self;
    
    [_collectionView registerClass:[ImageGalleryCollectionViewCell class] forCellWithReuseIdentifier:CELL_IDENTIFIER];
    _collectionView.backgroundColor = self.view.backgroundColor;
    [self.view addSubview:_collectionView];
    
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return [self getLargeSquareSize];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [_photoFileArray count];
}

/**
 *  Loads the image into the cell's image view
 *
 *  @param collectionView the collection view
 *  @param indexPath      the cell index
 *
 *  @return the cell
 */
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSString* imageName = [_photoFileArray objectAtIndex:indexPath.row];
    NSString *filename = [NSString stringWithFormat:@"%@/%@", _directoryPath, imageName];
    
    ImageGalleryCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:CELL_IDENTIFIER forIndexPath:indexPath];
    
    dispatch_async(dispatch_get_main_queue(), ^{
        cell.imageView.image = [UIImage imageWithContentsOfFile:filename];
    });
    
    return cell;
}



@end
