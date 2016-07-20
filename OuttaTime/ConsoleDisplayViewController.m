//
//  ViewController.m
//  OuttaTime
//
//  Created by Gregory Weiss on 7/20/16.
//  Copyright © 2016 Gregory Weiss. All rights reserved.
//

#import "ConsoleDisplayViewController.h"
#import "SetDestinationViewController.h"

@interface ConsoleDisplayViewController () <DateSetDelegate>

{
    // instance variables go here??
    NSNumber *currentSpeedValue;
    int originalSpeedValue;
    NSTimer *speedMPHtimer;
    
}

// properties go here!!!

@property (weak, nonatomic) IBOutlet UILabel *destinationDateLabel;
@property (weak, nonatomic) IBOutlet UILabel *todaysDateLabel;
@property (weak, nonatomic) IBOutlet UILabel *lastUsedDateLabel;
@property (weak, nonatomic) IBOutlet UILabel *speedMPHLabel;

@property (nonatomic, strong) NSDateFormatter *dateFormatter;
@property (nonatomic, weak) NSDate *today; // = [NSDate date];


@end

@implementation ConsoleDisplayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSDate *today = [NSDate date];
    self.dateFormatter = [[NSDateFormatter alloc] init];
    self.dateFormatter.dateStyle = NSDateFormatterMediumStyle;
    self.dateFormatter.timeStyle = NSDateFormatterNoStyle;
    self.todaysDateLabel.text = [self.dateFormatter stringFromDate:today];

    
    originalSpeedValue = 0;   // THIS ISN'T RIGHT I THINK!!!
    //currentDateValue = originalDateValue; // FIX THIS!!!!
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Action Handlers

- (IBAction)travelBackTapped:(UIButton *)sender
{
    if (!speedMPHtimer)
    {
        speedMPHtimer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(travelBackFired) userInfo:nil repeats:YES];
    }
    
}




#pragma mark - Date Set delegate

- (void)dateWasChosen:(NSDate*)dateValue
{
  //  originalTimerValue = timeValue;
  //  currentTimerValue = originalTimerValue;
    self.destinationDateLabel.text = [self.dateFormatter stringFromDate: dateValue];
   // self.todaysDateLabel.text = [NSString stringWithFormat:@"%ld sec", (long)currentTimerValue];
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"SetDestinationSegue"])
    {
        SetDestinationViewController *setDateVC = [segue destinationViewController];
        setDateVC.delegate = self;
    }
}


#pragma mark - Misc.

-(void)travelBackFired
{
    if (originalSpeedValue < 88)
    {
        originalSpeedValue = originalSpeedValue + 1;
        self.speedMPHLabel.text = [NSString stringWithFormat:@"%ld MPH", (long)originalSpeedValue];
    }
    else
    {
        originalSpeedValue = 0;
        self.speedMPHLabel.text = [NSString stringWithFormat:@"%ld MPH", (long)originalSpeedValue];
        self.lastUsedDateLabel.text = self.todaysDateLabel.text;
        self.todaysDateLabel.text = self.destinationDateLabel.text;
        self.destinationDateLabel.text = @"Pick a Destination!";
        [speedMPHtimer invalidate];
        speedMPHtimer = nil;
    }

    
}




@end
