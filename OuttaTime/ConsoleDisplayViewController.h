//
//  ViewController.h
//  OuttaTime
//
//  Created by Gregory Weiss on 7/20/16.
//  Copyright © 2016 Gregory Weiss. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DateSetDelegate

- (void)dateWasChosen:(NSDate*)dateValue; // goes in this header cause it will receive data


@end


@interface ConsoleDisplayViewController : UIViewController


@end

