#import "InputBaseControlViewController.h"

/**
 *  A gesture controller using a image
 */
@interface GesturesViewController : InputBaseControlViewController <UIGestureRecognizerDelegate>
-(IBAction)handlePanGesture:(UIPanGestureRecognizer*)recognizer;
-(IBAction)handlePinchGesture:(UIPinchGestureRecognizer*)recognizer;
-(IBAction)handleRotateGesture:(UIRotationGestureRecognizer*)recognizer;
@end
