//
//  ___FILEHEADER___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit


// MARK: - Builder + DependencyInjector Extension

public protocol ___VARIABLE_sceneName___SceneBuilable {
    
    func make___VARIABLE_sceneName___Scene(listener: ___VARIABLE_sceneName___SceneListenable?) -> ___VARIABLE_sceneName___Scene
}


extension DependencyInjector: ___VARIABLE_sceneName___SceneBuilable {
    
    public func make___VARIABLE_sceneName___Scene(listener: ___VARIABLE_sceneName___SceneListenable?) -> ___VARIABLE_sceneName___Scene {
        let router = ___VARIABLE_sceneName___Router(nextSceneBuilders: self)
        let viewModel = ___VARIABLE_sceneName___ViewModelImple(router: router, listener: listener)
        let viewController = ___VARIABLE_sceneName___ViewController(viewModel: viewModel)
        router.currentScene = viewController
        return viewController
    }
}
