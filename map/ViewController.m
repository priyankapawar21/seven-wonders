        //
//  ViewController.m
//  map
//
//  Created by Student-001 on 20/02/17.
//  Copyright © 2017 felix. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _geocoder=[[CLGeocoder alloc]init];
   _point1=[[MKPointAnnotation alloc]init];
    
   
    _titles=[[NSMutableArray alloc]initWithObjects:@"Great Wall of China",@"Petra",@" Christ the Redeemer",@" Machu Picchu" ,@"Chichen Itza ",@"Colosseum",@"Taj Mahal ",nil];
    
    
    //_point1.title=@"kothrud";
   // _point1.subtitle=@"pune";
    //it is structure .not class.
    _location.latitude=40.4319;
    _location.longitude=116.5704;
    _point1.title=@"Great Wall of China";
    _point1.coordinate=_location;
    //_imgview.image=[UIImage imageNamed:@"chinawall.jpeg"];
   
    [_map addAnnotation:_point1];
    
    _point1=[[MKPointAnnotation alloc]init];
    _location.latitude=30.3285;
    _location.longitude=35.4444;
    _point1.title=@"Petra";
    _point1.coordinate=_location;
    [_map addAnnotation:_point1];
    
    _point1=[[MKPointAnnotation alloc]init];
    _location.latitude=22.9519;
    _location.longitude=43.2105;
    _point1.title=@"Christ the Redeemer";
    _point1.coordinate=_location;
    [_map addAnnotation:_point1];
   
    _point1=[[MKPointAnnotation alloc]init];
    _location.latitude=13.1631;
    _location.longitude=72.5450;
    _point1.title=@"Machu Picchu";
    _point1.coordinate=_location;
    [_map addAnnotation:_point1];
    
    
    _point1=[[MKPointAnnotation alloc]init];
    _location.latitude=20.6843;
    _location.longitude=88.5678;
    _point1.title=@"Chichen Itza";
    _point1.coordinate=_location;
    [_map addAnnotation:_point1];
    
    
    _point1=[[MKPointAnnotation alloc]init];
    _location.latitude=41.8902;
    _location.longitude=12.4922;
    _point1.title=@"Colosseum";
    _point1.coordinate=_location;
    [_map addAnnotation:_point1];
    
    
    _point1=[[MKPointAnnotation alloc]init];
    _location.latitude=27.1750;
    _location.longitude=78.0422;
    _point1.title=@"Taj Mahal";
   
    _point1.coordinate=_location;
    [_map addAnnotation:_point1];
    }


    
    


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation
{
    MKPinAnnotationView *pin=[[MKPinAnnotationView alloc]initWithAnnotation:annotation reuseIdentifier:@"pin"];
    pin.pinTintColor=[UIColor orangeColor];
    pin.canShowCallout=YES;
   UIView *v1=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 150, 70)];
    v1.backgroundColor=[UIColor grayColor];
    //NSLog(@"%d",cnt+1);
    _imgview=[[UIImageView alloc]initWithFrame:CGRectMake(5, 5, 50,50)];
    
    _b=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    _b.frame=CGRectMake(60, 10, 100, 30);
    _b.backgroundColor=[UIColor cyanColor];
    if([annotation.title isEqualToString:@"Great Wall of China"])
    {
        _imgview.image=[UIImage imageNamed:@"chinawall.jpeg"];
        [_b setTitle:@"chinawall" forState:UIControlStateNormal];
        
            
    }
    if([annotation.title isEqualToString:@"Taj Mahal"])
    {
        _imgview.image=[UIImage imageNamed:@"tajmahal.jpeg"];
        [_b setTitle:@"TajMahal" forState:UIControlStateNormal];
        
    }
    if([annotation.title isEqualToString:@"Petra"])
    {
        _imgview.image=[UIImage imageNamed:@"petra.jpeg"];
        [_b setTitle:@"Petra" forState:UIControlStateNormal];
       
    }
    if([annotation.title isEqualToString:@"Christ the Redeemer"])
    {
        _imgview.image=[UIImage imageNamed:@"Christ the Redeemer.jpeg"];
        
        
        [_b setTitle:@"Christ" forState:UIControlStateNormal];
    }
    if([annotation.title isEqualToString:@"Machu Picchu"])
    {
        _imgview.image=[UIImage imageNamed:@"Machu Picchu.jpeg"];
        [_b setTitle:@"MachuPicchu" forState:UIControlStateNormal];
   
    }
    if([annotation.title isEqualToString:@"Chichen Itza"])
    {
        _imgview.image=[UIImage imageNamed:@"Chichen Itza.jpeg"];
        [_b setTitle:@"ChichenItza" forState:UIControlStateNormal];
        
    }
    if([annotation.title isEqualToString:@"Colosseum"])
    {
        _imgview.image=[UIImage imageNamed:@"Colosseum.jpeg"];
         [_b setTitle:@"Colosseum" forState:UIControlStateNormal];
        
    }
    
    [_b addTarget:self action:@selector(btnon:) forControlEvents:UIControlEventTouchUpInside];
    [v1 addSubview:_imgview];
    [v1 addSubview:_b];
    pin.rightCalloutAccessoryView=v1;
    
    return pin;
}
-(void)btnon:(id)sender
{
    UIButton  *button=(UIButton*)sender;
    if([button.currentTitle isEqualToString:@"chinawall"])
    {
        _tempimg=@"chinawall.jpeg";
        _loc=@"chinawall";
        _detailstr=@"The Great Wall of China is a series of fortifications made of stone, brick, tamped earth, wood, and other materials, generally built along an east-to-west line across the historical northern borders of China to protect the Chinese states and empires against the raids and invasions of the various nomadic groups of the Eurasian Steppe.";
        
    }
    if([button.currentTitle isEqualToString:@"TajMahal"])
    {
        _tempimg=@"tajmahal.jpeg";
        _loc=@"Taj mahal";
        _detailstr=@"The Taj Mahal is an ivory-white marble mausoleum on the south bank of the Yamuna river in the Indian city of Agra. It was commissioned in 1632 by the Mughal emperor, Shah Jahan, to house the tomb of his favourite wife, Mumtaz Mahal";
        
    }
    if([button.currentTitle isEqualToString:@"Petra"])
    {
        _tempimg=@"petra.jpeg";
        _loc=@"Petra";
        _detailstr=@"Petra is a famous archaeological site in Jordan's southwestern desert. Dating to around 300 B.C., it was the capital of the Nabatean Kingdom. Accessed via a narrow canyon called Al Siq, it contains tombs and temples carved into pink sandstone cliffs, earning its nickname, the Rose City";
    
       
    }
    if([button.currentTitle isEqualToString:@"Christ"])
    {
        _tempimg=@"Christ the Redeemer.jpeg";
        _loc=@"Christ the Redeemer";
        _detailstr=@"Christ the Redeemer is an Art Deco statue of Jesus Christ in Rio de Janeiro, Brazil, created by French sculptor Paul Landowski and built by the Brazilian engineer Heitor da Silva Costa, in collaboration with the French engineer Albert Caquot. ";
        
    }
    if([button.currentTitle isEqualToString:@"MachuPicchu"])
    {
        _tempimg=@"Machu Picchu.jpeg";
         _loc=@"Machu Picchu";
        _detailstr=@"Machu Picchu is an Incan citadel set high in the Andes Mountains in Peru, above the Urubamba River valley. Built in the 15th century and later abandoned, it’s renowned for its sophisticated dry-stone walls that fuse huge blocks without the use of mortar, intriguing buildings that play on astronomical alignments and panoramic views.";
        
    }
    if([button.currentTitle isEqualToString:@"ChichenItza"])
    {
        _tempimg=@"Chichen Itza.jpeg";
        _loc=@"Chichen Itza";
        _detailstr=@"Chichén Itzá is a world-famous complex of Mayan ruins on Mexico's Yucatán Peninsula. A massive step pyramid known as El Castillo dominates the 6.5-sq.-km. ancient city, which thrived from around 600 A.D. to the 1200s. Graphic stone carvings survive at structures like the ball court, Temple of the Warriors and the Wall of the Skulls. Nightly sound-and-light shows illuminate the buildings' sophisticated geometry.";
        
    }
    if([button.currentTitle isEqualToString:@"Colosseum"])
    {
        _tempimg=@"Colosseum.jpeg";
        _loc=@"Colosseum";
        _detailstr=@"he Colosseum or Coliseum, also known as the Flavian Amphitheatre, is an oval amphitheatre in the centre of the city of Rome, Italy. Built of concrete and sand, it is the largest amphitheatre ever built. ";
        
    }
    UIStoryboard *s=[UIStoryboard  storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    SecondViewController*svc=[s instantiateViewControllerWithIdentifier:@"second"];
    svc.imgname=_tempimg;
    svc.tempstr=_detailstr;
    svc.wondername=_loc;
    [self.navigationController pushViewController:svc animated:YES];
    
}
@end
