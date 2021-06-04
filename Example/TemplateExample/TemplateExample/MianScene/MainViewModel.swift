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
    
    public init(router: MainRouting) {
        self.router = router
    }
    
    deinit {
        LeakDetector.instance.expectDeallocate(object: self.router)
    }
    
    fileprivate final class Subjects {
        
    }
    
    private let subjects = Subjects()
    private let disposeBag = DisposeBag()
}


// MARK: - MainViewModelImple Interactor

extension MainViewModelImple {
    
    public func showRandomNumber() {
        
        guard let RandomNumberPresenter = self.router.showRandomNumber() else { return }
        self.bindRandomNumberScenPresentEvent(RandomNumberPresenter)
    }
    
    private func bindRandomNumberScenPresentEvent(_ presenter: RandomNumberScenePresenter) {
        
        presenter.newRandNumber
            .subscribe(onNext: { number in
                print("rand number from RandomNumber scene: \(number)")
            })
            .disposed(by: self.disposeBag)
    }
    
    public func showEmptyFinalScene() {
        self.router.showEmptyScene("dummy")
    }
}


// MARK: - MainViewModelImple Presenter

extension MainViewModelImple {
    
}
