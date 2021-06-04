//
//  
//  RandomNumberBuilder.swift
//  TemplateExample
//
//  Created by sudo.park on 2021/06/04.
//
//  TemplateExample
//
//  Created sudo.park on 2021/06/04.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit


// MARK: - Builder + DI Container Extension

public protocol RandomNumberSceneBuilable {
    
    func makeRandomNumberScene() -> RandomNumberScene
}


extension DIContainers: RandomNumberSceneBuilable {
    
    public func makeRandomNumberScene() -> RandomNumberScene {
        let router = RandomNumberRouter(nextSceneBuilders: self)
        let viewModel = RandomNumberViewModelImple(repository: self.randomNumberRepository, router: router)
        let viewController = RandomNumberViewController(viewModel: viewModel)
        router.currentScene = viewController
        return viewController
    }
}
