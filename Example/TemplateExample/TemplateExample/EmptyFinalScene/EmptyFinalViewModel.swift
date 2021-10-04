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
    private weak var listener: EmptyFinalSceneListenable?
    
    public init(params: String, router: EmptyFinalRouting, listener: EmptyFinalSceneListenable?) {
        self.params = params
        self.router = router
        self.listener = listener
        
        print("runtime parameter: \(params)")
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


// MARK: - EmptyFinalViewModelImple Interactor

extension EmptyFinalViewModelImple {
    
}


// MARK: - EmptyFinalViewModelImple Presenter

extension EmptyFinalViewModelImple {
    
}
