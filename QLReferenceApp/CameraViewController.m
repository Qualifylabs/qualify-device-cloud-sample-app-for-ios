#import "CameraViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface CameraViewController ()
@property AVCaptureSession *session;
@end

/**
 *  A camera view controller
 */
@implementation CameraViewController

/**
 *  Creates the camera preview
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    _session = [[AVCaptureSession alloc] init];
    _session.sessionPreset = AVCaptureSessionPresetPhoto;
    
    AVCaptureDevice *device = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
    NSError *error;
    
    AVCaptureDeviceInput *deviceInput = [[AVCaptureDeviceInput alloc] initWithDevice:device error:&error];
    
    if ([_session canAddInput:deviceInput]) {
        [_session addInput:deviceInput];
    }
    
    AVCaptureVideoPreviewLayer *previewLayer =  [[AVCaptureVideoPreviewLayer alloc] initWithSession:_session];
    
    previewLayer.videoGravity = AVLayerVideoGravityResizeAspectFill;
    CALayer *rootLayer = self.view.layer;
    rootLayer.masksToBounds = YES;
    previewLayer.frame = [self frameFromCGPoint:CGPointMake(0, [self getLargeHeightPadding] + [self getTopPositionRounded]) AndCGSize:[self calculateMovieAspectRatioSize]];
    
    [rootLayer insertSublayer:previewLayer atIndex:0];
    [_session startRunning];
}

@end
