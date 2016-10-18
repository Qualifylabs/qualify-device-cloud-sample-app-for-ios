#import <MediaPlayer/MediaPlayer.h>
#import "MediaPlayerViewController.h"

@interface MediaPlayerViewController ()
@property MPMoviePlayerViewController *movieController;
@end
static NSString* const MOVIE_FILE_NAME = @"movie";
static NSString* const MOVIE_FILE_TYPE = @"mp4";

/**
 *  A video playing view controller
 */
@implementation MediaPlayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpView];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self playVideo];
}

/**
 *  Creates media player and initializes the movie
 */
-(void)setUpView{
    NSString *path = [[NSBundle mainBundle] pathForResource:MOVIE_FILE_NAME ofType:MOVIE_FILE_TYPE];
    NSURL *url = [NSURL fileURLWithPath:path];
    _movieController = [[MPMoviePlayerViewController alloc] initWithContentURL:url];
    _movieController.moviePlayer.controlStyle = MPMovieControlStyleNone;
    _movieController.moviePlayer.repeatMode = MPMovieRepeatModeOne;
    _movieController.moviePlayer.scalingMode = MPMovieScalingModeFill;
    _movieController.view.frame = [self frameFromCGPoint:CGPointZero AndCGSize:[self calculateMovieAspectRatioSize]];
    [self centerView:_movieController.view];
    [self.view addSubview:_movieController.view];
}

/**
 *  plays the video
 */
-(void)playVideo{
    [_movieController.moviePlayer prepareToPlay];
    [_movieController.moviePlayer play];
}

@end
