//
//  ___FILEHEADER___
//

import UIKit


// MARK: - Routing

public protocol ___VARIABLE_sceneName___Routing: Routing { }

// MARK: - Routers

// TODO: compose next Scene Builders protocol
public typealias ___VARIABLE_sceneName___RouterBuildables = EmptyBuilder

public final class ___VARIABLE_sceneName___Router: Router<___VARIABLE_sceneName___RouterBuildables>, ___VARIABLE_sceneName___Routing { }


extension ___VARIABLE_sceneName___Router {
    
    // ___VARIABLE_sceneName___Routing implements
    private var currentInteractor: ___VARIABLE_sceneName___SceneInteractable? {
        return (self.currentScene as? ___VARIABLE_sceneName___Scene)?.interactor
    }
}
