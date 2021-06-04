//
//  ApplicationRootViewModel.swift
//  TemplateExample
//
//  Created sudo.park on 2021/06/04.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

import RxSwift
import RxRelay


// MARK: - ApplicationRootViewModel

public protocol ApplicationRootViewModel: AnyObject {

    // interactor
    func handleAppDidLaunched()
    
    // presenter
}


// MARK: - ApplicationRootViewModelImple

public final class ApplicationRootViewModelImple: ApplicationRootViewModel {
    
    private let router: ApplicationRootRouting
    
    public init(router: ApplicationRootRouting) {
        self.router = router
    }

}


// MARK: - ApplicationRootViewModelImple Interactor

extension ApplicationRootViewModelImple {
    
    public func handleAppDidLaunched() {
        
        self.router.setupMain()
    }
}


// MARK: - ApplicationRootViewModelImple Presenter

extension ApplicationRootViewModelImple {
    
}
