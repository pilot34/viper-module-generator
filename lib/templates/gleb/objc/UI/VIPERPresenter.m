//
//  VIPERPresenter.m
//
//  Created by AUTHOR on DATE.
//  Copyright © YEAR AUTHOR. All rights reserved.
//

#import "VIPERPresenter.h"

@interface VIPERPresenter ()

@property (weak, nonatomic) id<RootRouterProtocol, VIPERWireframeProtocol> wireframe;
@property (strong, nonatomic) id<VIPERInteractorProtocol> interactor;
@property (weak, nonatomic) id<VIPERViewControllerProtocol> viewController;

@end

@implementation VIPERPresenter

#pragma mark - VIPERViewControllerDelegate

@end
