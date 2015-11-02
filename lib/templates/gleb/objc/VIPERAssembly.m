//
//  VIPERAssembly.m
//
//  Created by AUTHOR on DATE.
//  Copyright © YEAR AUTHOR. All rights reserved.
//

#import "VIPERAssembly.h"
#import "VIPERProtocols.h"
#import "VIPERViewController.h"
#import "VIPERPresenter.h"
#import "VIPERInteractor.h"
#import "VIPERWireframe.h"
#import "StoryboardProvider.h"

@implementation VIPERAssembly

- (Module *)newsModule {
    return [TyphoonDefinition withClass:Module.class configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(interactor) with:self.viperInteractor];
        [definition injectProperty:@selector(viewController) with:self.viperViewController];
        [definition injectProperty:@selector(presenter) with:self.viperPresenter];
        [definition injectProperty:@selector(wireframe) with:self.viperWireframe];
    }];
}

- (UIViewController<VIPERViewControllerProtocol> *)viperViewController {
    return [TyphoonDefinition withFactory:StoryboardProvider.mainStoryboard
                                 selector:@selector(instantiateViewControllerWithIdentifier:)
                               parameters:^(TyphoonMethod *factoryMethod) {
                                   [factoryMethod injectParameterWith:NSStringFromClass(VIPERViewController.class)];
                               } configuration:^(TyphoonFactoryDefinition *definition) {
                                   [definition injectProperty:@selector(presenter) with:self.viperPresenter];
                                   definition.scope = TyphoonScopeObjectGraph;
                               }];
}

- (id<VIPERPresenterProtocol>)viperPresenter {
    return [TyphoonDefinition withClass:VIPERPresenter.class configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(wireframe)];
        
        [definition injectProperty:@selector(viewController)
                              with:self.viperViewController];
        
        [definition injectProperty:@selector(interactor)
                              with:self.viperInteractor];
    }];
}

- (id<VIPERInteractorProtocol>)viperInteractor {
    return [TyphoonDefinition withClass:VIPERInteractor.class];
}

- (id<VIPERWireframeProtocol>)viperWireframe {
    return [TyphoonDefinition withClass:VIPERWireframe.class configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(rootRouter)];
        [definition injectProperty:@selector(presenter) with:self.viperPresenter];
    }];
}

@end
