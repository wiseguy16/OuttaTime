//
//  SetDestinationViewController.m
//  OuttaTime
//
//  Created by Gregory Weiss on 7/20/16.
//  Copyright © 2016 Gregory Weiss. All rights reserved.
//

#import "SetDestinationViewController.h"

@interface SetDestinationViewController ()

@property (weak, nonatomic) IBOutlet UIDatePicker *setDestinationPicker;



@end

@implementation SetDestinationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Action Handlers

- (IBAction)cancelTapped:(UIButton *)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];

    
}

- (IBAction)setTapped:(UIButton *)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
  
    
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
