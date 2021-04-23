//
//  ___FILEHEADER___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit


// MARK: - Builder + DI Container Extension

public protocol ___VARIABLE_sceneName___Building: Buildable {
    
    func make___VARIABLE_sceneName___Scene() -> Presentable
}

extension DIContainers: ___VARIABLE_sceneName___Building {
    
    public func make___VARIABLE_sceneName___Scene() -> Presentable {
        return EmptyViewController()
    }
}


// MARK: - Routers

public typealias ___VARIABLE_sceneName___RouterBuilders = EmptyBuilder

public final class ___VARIABLE_sceneName___Router: Router<___VARIABLE_sceneName___RouterBuilders> {
        
    
    public override func route(to scene: Scene, from context: Presentable?) {
        
        switch scene {
        default: break
        }
    }
}
