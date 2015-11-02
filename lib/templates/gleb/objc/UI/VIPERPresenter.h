//
//  VIPERPresenter.h
//
//  Created by AUTHOR on DATE.
//  Copyright © YEAR AUTHOR. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VIPERProtocols.h"
#import "AppProtocols.h"

@interface VIPERPresenter : NSObject
    <
    VIPERPresenterProtocol,
    VIPERViewControllerDelegate
    >

@property (weak, nonatomic, readonly) id<RootRouterProtocol, VIPERWireframeProtocol> wireframe;
@property (strong, nonatomic, readonly) id<VIPERInteractorProtocol> interactor;
@property (weak, nonatomic, readonly) id<VIPERViewControllerProtocol> viewController;

@end
