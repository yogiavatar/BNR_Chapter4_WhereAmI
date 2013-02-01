//
//  RBWhereAmIViewController.h
//  RBWhereAmI
//

//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface RBWhereAmIViewController : UIViewController <CLLocationManagerDelegate>
{
    CLLocationManager *locationManager;
    
    IBOutlet MKMapView *worldView;
    IBOutlet UIActivityIndicatorView *activityIndicator;
    IBOutlet UITextField *locationTitleField;
    
}

//-(void)doSomethingWeird;

@end
