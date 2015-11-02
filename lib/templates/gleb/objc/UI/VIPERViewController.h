//
//  VIPERViewController.h
//
//  Created by AUTHOR on DATE.
//  Copyright © YEAR AUTHOR. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VIPERProtocols.h"

@interface VIPERViewController : UIViewController<VIPERViewControllerProtocol>

@property (strong, nonatomic, readonly) id<VIPERViewControllerDelegate> presenter;

@end
