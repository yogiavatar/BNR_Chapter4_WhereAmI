//
//  RBWhereAmIViewController.m
//  RBWhereAmI
//


#import "RBWhereAmIViewController.h"
#define kDistanceFilter 50

@implementation RBWhereAmIViewController

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) 
    {
        locationManager = [[CLLocationManager alloc] init];
      //  [self doSomethingWeird];
        
        [locationManager setDelegate:self];
        [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
        // this line is solution to the Bronze Challenge of Chapter 4
        // The CLLocationManager will only update its delegate with a new location if the device has moved more than 50 meters
        [locationManager setDistanceFilter:kDistanceFilter];
        [locationManager startUpdatingLocation];
        //this line is solution to Silver Challenge of Chapter 4
        //CLLocation Manager will update its delegate with heading value if device has a compass - result visible only when run with a device
        [locationManager startUpdatingHeading];
        
    }
    return self;
}

- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation
{
        NSLog(@"Location: %@",newLocation);
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error
{
    NSLog(@"Could not find location: %@",error);
}

-(void)dealloc
{
    [locationManager setDelegate:nil];
}

//this delegate method is part of solution to Silver Challenge of Chapter 4
- (void)locationManager:(CLLocationManager *)manager didUpdateHeading:(CLHeading *)newHeading
{
    NSLog(@"Heading: %@", newHeading);
}
//-(void)doSomethingWeird
//{
//    NSLog(@"One");
//    NSLog(@"Two");
//    NSLog(@"Three");
//}

@end
