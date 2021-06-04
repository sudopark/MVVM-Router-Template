//
//  EmptyFinalViewModel.swift
//  TemplateExample
//
//  Created sudo.park on 2021/06/04.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

import RxSwift
import RxRelay


// MARK: - EmptyFinalViewModel

public protocol EmptyFinalViewModel: AnyObject {

    // interactor
    
    // presenter
}


// MARK: - EmptyFinalViewModelImple

public final class EmptyFinalViewModelImple: EmptyFinalViewModel {
    
    private let params: String
    private let router: EmptyFinalRouting
    
    public init(params: String, router: EmptyFinalRouting) {
        self.params = params
        self.router = router
        
        print("runtime parameter: \(params)")
    }
    
    deinit {
        LeakDetector.instance.expectDeallocate(object: self.router)
    }
    
    fileprivate final class Subjects {
        
    }
    
    private let subjects = Subjects()
    private let disposeBag = DisposeBag()
}


// MARK: - EmptyFinalViewModelImple Interactor

extension EmptyFinalViewModelImple {
    
}


// MARK: - EmptyFinalViewModelImple Presenter

extension EmptyFinalViewModelImple {
    
}
