//
//  
//  EmptyFinalBuilder.swift
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

public protocol EmptyFinalSceneBuilable {
    
    func makeEmptyFinalScene(_ params: String, listener: EmptyFinalSceneListenable?) -> EmptyFinalScene
}


extension DependencyInjector: EmptyFinalSceneBuilable {
    
    public func makeEmptyFinalScene(_ params: String,
                                    listener: EmptyFinalSceneListenable?) -> EmptyFinalScene {
        let router = EmptyFinalRouter(nextSceneBuilders: self)
        let viewModel = EmptyFinalViewModelImple(params: params, router: router, listener: listener)
        let viewController = EmptyFinalViewController(viewModel: viewModel)
        router.currentScene = viewController
        return viewController
    }
}
