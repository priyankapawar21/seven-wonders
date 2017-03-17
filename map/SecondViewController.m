//
//  SecondViewController.m
//  map
//
//  Created by Mac on 07/03/17.
//  Copyright © 2017 felix. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //_tf.frame=CGRectMake(10, 320, 300, 200);
       _locname.text=_wondername;
    _imgview.image=[UIImage imageNamed:_imgname];
    //scrollview.backgroundColor=[UIColor cyanColor];
    _lbl.lineBreakMode=UILineBreakModeWordWrap;
    _lbl.numberOfLines=10;
    
    _lbl.text=_tempstr;
 
    
   // [_scrollview setContentSize:CGSizeMake(500,)];
    //[_scrollview addSubview:_lbl];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
