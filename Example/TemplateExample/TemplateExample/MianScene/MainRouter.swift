//
//  
//  MainRouter.swift
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


// MARK: - Routing

public protocol MainRouting: Routing {
    
    func showRandomNumber()
    
    func showEmptyScene(_ params: String)
}

// MARK: - Routers

// TODO: compose next Scene Builders protocol
public typealias MainRouterBuildables = RandomNumberSceneBuilable & EmptyFinalSceneBuilable

public final class MainRouter: Router<MainRouterBuildables>, MainRouting { }


extension MainRouter {
    
    // MainRouting implements
    
    private var currentInteractor: MainSceneInteractable? {
        return (self.currentScene as? MainScene)?.interactor
    }
    
    public func showRandomNumber() {
        guard let RandomNumberScene = self.nextScenesBuilder?
                .makeRandomNumberScene(listener: self.currentInteractor) else {
            return
        }
        self.currentScene?.present(RandomNumberScene, animated: true, completion: nil)
    }
    
    public func showEmptyScene(_ params: String) {
        guard let next = self.nextScenesBuilder?
                .makeEmptyFinalScene(params, listener: self.currentInteractor) else { return }
        self.currentScene?.present(next, animated: true, completion: nil)
    }
}
