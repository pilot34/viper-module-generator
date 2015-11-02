//
//  VIPERAssembly.h
//
//  Created by AUTHOR on DATE.
//  Copyright © YEAR AUTHOR. All rights reserved.
//

#import <Typhoon/Typhoon.h>
#import "VIPERProtocols.h"

@interface VIPERAssembly : TyphoonAssembly

- (UIViewController<VIPERViewControllerProtocol> *)viperViewController;
- (id<VIPERPresenterProtocol>)viperPresenter;

@end
