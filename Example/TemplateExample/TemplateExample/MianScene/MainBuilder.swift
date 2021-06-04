//
//  
//  MainBuilder.swift
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

public protocol MainSceneBuilable {
    
    func makeMainScene() -> MainScene
}


extension DIContainers: MainSceneBuilable {
    
    public func makeMainScene() -> MainScene {
        let router = MainRouter(nextSceneBuilders: self)
        let viewModel = MainViewModelImple(router: router)
        let viewController = MainViewController(viewModel: viewModel)
        router.currentScene = viewController
        return viewController
    }
}
