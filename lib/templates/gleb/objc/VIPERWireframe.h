//
//  VIPERWireframe.h
//
//  Created by AUTHOR on DATE.
//  Copyright © YEAR AUTHOR. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VIPERProtocols.h"
#import "AppProtocols.h"

@interface VIPERWireframe : NSObject
    <
    VIPERWireframeProtocol
    >

@property (weak, nonatomic, readonly) id<RootRouterProtocol, VIPERWireframeDelegate> rootRouter;
@property (weak, nonatomic, readonly) id<VIPERPresenterProtocol> presenter;

@end
