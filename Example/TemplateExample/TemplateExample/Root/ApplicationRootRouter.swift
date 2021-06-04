//
//  
//  ApplicationRootRouter.swift
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

public protocol ApplicationRootRouting: Routing {

    func setupMain()
}

// MARK: - Routers

// TODO: compose next Scene Builders protocol
public typealias ApplicationRootRouterBuildables = MainSceneBuilable

public final class ApplicationRootRouter: Router<ApplicationRootRouterBuildables>, ApplicationRootRouting {
    
    private var window: UIWindow!
}


extension ApplicationRootRouter {
    
    // ApplicationRootRouting implements
    public func setupMain() {
        
        guard let main = self.nextScenesBuilder?.makeMainScene() else { return }
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window.backgroundColor = .clear
        self.window.isHidden = false
        self.window.windowLevel = .normal
        self.window.rootViewController = main
        self.window.makeKeyAndVisible()
    }
}
