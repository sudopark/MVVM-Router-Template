//
//  MainViewModel.swift
//  TemplateExample
//
//  Created sudo.park on 2021/06/04.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

import RxSwift
import RxRelay


// MARK: - MainViewModel

public protocol MainViewModel: AnyObject {

    // interactor
    func showRandomNumber()
    func showEmptyFinalScene()
    
    // presenter
}


// MARK: - MainViewModelImple

public final class MainViewModelImple: MainViewModel {
    
    private let router: MainRouting
    private weak var listener: MainSceneListenable?
    
    public init(router: MainRouting,
                listener: MainSceneListenable?) {
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


// MARK: - MainViewModelImple Interactor

extension MainViewModelImple {
    
    public func showRandomNumber() {
        self.router.showRandomNumber()
    }

    public func showEmptyFinalScene() {
        self.router.showEmptyScene("dummy")
    }
}


// MARK: - MainViewModelImple Presenter

extension MainViewModelImple {
    
}


// MARK: - MainViewModelImple + RandomNumberSceneListenable

extension MainViewModelImple {
    
    public func newRandNumberMade(_ newValue: Int) {
        print("rand number from RandomNumber scene: \(newValue)")
    }
}
