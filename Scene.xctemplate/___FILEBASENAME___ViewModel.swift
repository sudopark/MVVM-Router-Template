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

public protocol ___VARIABLE_sceneName___ViewModel: class {

    // interactor
    
    // presenter
}


// MARK: - ___VARIABLE_sceneModuleName___ViewModel

public final class ___VARIABLE_sceneName___ViewModelImple: ___VARIABLE_sceneName___ViewModel {
    
    public let router: ___VARIABLE_sceneName___Routing
    
    public init(router: ___VARIABLE_sceneName___Routing) {
        self.router = router
    }
    
    deinit {
        LeakDetector.instance.expectDeallocate(object: self.router)
    }
    
    private let disposeBag = DisposeBag()
}


// MARK: - ___VARIABLE_sceneModuleName___ViewModel Interactor

extension ___VARIABLE_sceneName___ViewModelImple {
    
}


// MARK: - ___VARIABLE_sceneModuleName___ViewModel Presenter

extension ___VARIABLE_sceneName___ViewModelImple {
    
}
