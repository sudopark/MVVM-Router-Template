//
//  RandomNumberViewModel.swift
//  TemplateExample
//
//  Created sudo.park on 2021/06/04.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

import RxSwift
import RxRelay


// MARK: - RandomNumberViewModel

public protocol RandomNumberViewModel: AnyObject {

    // interactor
    func makeRandNumber()
    
    // presenter
    var newRandNumber: Observable<Int> { get }
}


// MARK: - RandomNumberViewModelImple

public final class RandomNumberViewModelImple: RandomNumberViewModel {
    
    private let repository: RandomNumberRepository
    private let router: RandomNumberRouting
    private weak var listener: RandomNumberSceneListenable?
    
    public init(repository: RandomNumberRepository,
                router: RandomNumberRouting,
                listener: RandomNumberSceneListenable?) {
        self.repository = repository
        self.router = router
        self.listener = listener
    }
    
    deinit {
        LeakDetector.instance.expectDeallocate(object: self.router)
        LeakDetector.instance.expectDeallocate(object: self.subjects)
    }
    
    fileprivate final class Subjects {
        
        let randNumber = PublishSubject<Int>()
    }
    
    private let subjects = Subjects()
    private let disposeBag = DisposeBag()
}


// MARK: - RandomNumberViewModelImple Interactor

extension RandomNumberViewModelImple {
    
    public func makeRandNumber() {
        
        self.repository.loadRandomNumberData { [weak self] number in
            
            self?.subjects.randNumber.onNext(number)
            self?.listener?.newRandNumberMade(number)
        }
    }
}


// MARK: - RandomNumberViewModelImple Presenter

extension RandomNumberViewModelImple {
    
    public var newRandNumber: Observable<Int> {
        return self.subjects.randNumber
    }
}
