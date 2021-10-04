//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

import RxSwift
import RxRelay


// MARK: - ___VARIABLE_sceneName:identifier___ViewModel

public protocol ___VARIABLE_sceneName___ViewModel: AnyObject {

    // interactor
    
    // presenter
}


// MARK: - ___VARIABLE_sceneName:identifier___ViewModelImple

public final class ___VARIABLE_sceneName___ViewModelImple: ___VARIABLE_sceneName___ViewModel {
    
    private let router: ___VARIABLE_sceneName___Routing
    private weak var listener: ___VARIABLE_sceneName___SceneListenable?
    
    public init(router: ___VARIABLE_sceneName___Routing,
                listener: ___VARIABLE_sceneName___SceneListenable?) {
        self.router = router
        self.listener = listener
    }
    
    deinit {
        LeakDetector.instance.expectDeallocate(object: self.router)
        LeakDetector.instance.expectDeallocate(object: self.subjects)
    }
    
    fileprivate final class Subjects {
        
    }
    
    private let subjects = Subjects()
    private let disposeBag = DisposeBag()
}


// MARK: - ___VARIABLE_sceneName:identifier___ViewModelImple Interactor

extension ___VARIABLE_sceneName___ViewModelImple {
    
}


// MARK: - ___VARIABLE_sceneName:identifier___ViewModelImple Presenter

extension ___VARIABLE_sceneName___ViewModelImple {
    
}
