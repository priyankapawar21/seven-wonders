//
//  ViewController.h
//  map
//
//  Created by Student-001 on 20/02/17.
//  Copyright © 2017 felix. All rights reserved.
//

#import <UIKit/UIKit.h>
#include <MapKit/MapKit.h>

@interface ViewController : UIViewController<MKMapViewDelegate,CLLocationManagerDelegate>

@property (strong, nonatomic) IBOutlet MKMapView *map;

@property (nonatomic,retain)CLGeocoder *geocoder;

@property CLLocationCoordinate2D location;
@property (nonatomic,retain)NSMutableArray *titles,*subtitles;
@property(nonatomic,retain)MKPointAnnotation *point1;
@property(nonatomic,retain)UIImageView *imgview;
@property(nonatomic,retain)UIButton *b;
@property(nonatomic,retain)NSString*tempimg,*detailstr,*loc;

@end

