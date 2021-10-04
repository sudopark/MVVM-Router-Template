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
    
    func makeMainScene(listener: MainSceneListenable?) -> MainScene
}


extension DependencyInjector: MainSceneBuilable {
    
    public func makeMainScene(listener: MainSceneListenable?) -> MainScene {
        let router = MainRouter(nextSceneBuilders: self)
        let viewModel = MainViewModelImple(router: router, listener: listener)
        let viewController = MainViewController(viewModel: viewModel)
        router.currentScene = viewController
        return viewController
    }
}
