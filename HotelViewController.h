//
//  HotelViewController.h
//  MapKitRVC
//
//  Created by Charles Konkol on 11/25/13.
//  Copyright (c) 2013 THIAGO PEREIRA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface HotelViewController : UIViewController
{
    NSMutableArray *listOfHotels;
}
@property (strong, nonatomic) IBOutlet UIPickerView *HotelPick;
- (IBAction)btnView:(id)sender;

@end
