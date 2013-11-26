//
//  HotelViewController.m
//  MapKitRVC
//
//  Created by Charles Konkol on 11/25/13.
//  Copyright (c) 2013 THIAGO PEREIRA. All rights reserved.
//

#import "HotelViewController.h"

@interface HotelViewController ()

@end

@implementation HotelViewController
@synthesize HotelPick;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}
-(void)viewWillAppear:(BOOL)animated
{
    [self LoadHotels];
}
- (void) LoadHotels
{
    
    listOfHotels = [[NSMutableArray alloc] init];
  
    // Add Month Titles.
    [listOfHotels addObject:@"Hampton Inn"];
    [listOfHotels addObject:@"Residence Inn"];
    if (FixedID==0)
    {
               FixedID=0;
        strHotel=[listOfHotels objectAtIndex:0];
    }
    
    
    [HotelPick reloadAllComponents];
    [HotelPick selectRow:FixedID inComponent:0 animated:YES];

    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//PickerViewController.m
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)thePickerView {
    
    return 1;
}
//PickerViewController.m
- (NSInteger)pickerView:(UIPickerView *)thePickerView numberOfRowsInComponent:(NSInteger)component {
    
    return [listOfHotels count];
}
//PickerViewController.m
- (NSString *)pickerView:(UIPickerView *)thePickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return [listOfHotels objectAtIndex:row];
}
//PickerViewController.m
- (void)pickerView:(UIPickerView *)thePickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    strHotel=[listOfHotels objectAtIndex:row];
    FixedID=row;
}

- (IBAction)btnView:(id)sender {
}
@end
