//
//  MapItemViewController.h
//  MapKitTest
//
//  Created by Chuck Konkol on 6/28/13.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
#import <AddressBook/AddressBook.h>
#import "AppDelegate.h"

@interface MapItemViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *street;
@property (strong, nonatomic) IBOutlet UITextField *city;
@property (strong, nonatomic) IBOutlet UITextField *state;
@property (strong, nonatomic) IBOutlet UITextField *zip;
@property CLLocationCoordinate2D coordinates;
@property (strong, nonatomic) IBOutlet MKMapView *mapView;

- (IBAction)getDirections:(id)sender;
- (void)showMap;
- (IBAction)hideKeyboard:(id)sender;
- (IBAction)btnMyHotels:(id)sender;
- (IBAction)btnRestaurant:(id)sender;
- (IBAction)btnATM:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *txtHotel;




@end
