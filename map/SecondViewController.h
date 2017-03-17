//
//  SecondViewController.h
//  map
//
//  Created by Mac on 07/03/17.
//  Copyright © 2017 felix. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imgview;
@property (weak, nonatomic) IBOutlet UITextField *tf;
@property(nonatomic,retain)NSString*imgname,*tempstr,*wondername;
@property (weak, nonatomic) IBOutlet UILabel *lbl;

@property (weak, nonatomic) IBOutlet UILabel *locname;



@end
