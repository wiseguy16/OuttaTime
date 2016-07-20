//
//  SetDestinationViewController.h
//  OuttaTime
//
//  Created by Gregory Weiss on 7/20/16.
//  Copyright © 2016 Gregory Weiss. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ConsoleDisplayViewController.h"

@interface SetDestinationViewController : UIViewController

@property (nonatomic) id<DateSetDelegate> delegate;

@end
