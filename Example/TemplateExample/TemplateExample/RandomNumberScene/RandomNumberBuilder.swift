//
//
//  RandomNumberBuilder.swift
//  TemplateExample
//
//  Created by sudo.park on 2021/10/04.
//
//  TemplateExample
//
//  Created sudo.park on 2021/10/04.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit


// MARK: - Builder + DependencyInjector Extension

public protocol RandomNumberSceneBuilable {
    
    func makeRandomNumberScene(listener: RandomNumberSceneListenable?) -> RandomNumberScene
}


extension DependencyInjector: RandomNumberSceneBuilable {
    
    public func makeRandomNumberScene(listener: RandomNumberSceneListenable?) -> RandomNumberScene {
        let router = RandomNumberRouter(nextSceneBuilders: self)
        let viewModel = RandomNumberViewModelImple(repository: self.randomNumberRepository,
                                                   router: router,
                                                   listener: listener)
        let viewController = RandomNumberViewController(viewModel: viewModel)
        router.currentScene = viewController
        return viewController
    }
}
