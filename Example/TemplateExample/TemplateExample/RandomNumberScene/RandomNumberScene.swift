//
//  RandomNumberScene.swift
//  TemplateExample
//
//  Created sudo.park on 2021/06/04.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

import RxSwift
import RxCocoa


// MARK: - RandomNumberScene Interactor & Presenter

//public protocol RandomNumberSceneInteractor { }
//
public protocol RandomNumberScenePresenter {
    
    var newRandNumber: Observable<Int> { get }
}


// MARK: - RandomNumberScene

public protocol RandomNumberScene: Scenable {
    
//    var interactor: RandomNumberSceneInteractor? { get }
//
    var presenter: RandomNumberScenePresenter? { get }
}


// MARK: - RandomNumberViewModel conform RandomNumberSceneInteractor or RandomNumberScenePresenter

//extension RandomNumberViewModelImple: RandomNumberSceneInteractor {
//
//}
//
extension RandomNumberViewModelImple: RandomNumberScenePresenter { }

// MARK: - RandomNumberViewController provide RandomNumberSceneInteractor or RandomNumberScenePresenter

extension RandomNumberViewController {

//    public var interactor: RandomNumberSceneInteractor? {
//        return self.viewModel as? RandomNumberSceneInteractor
//    }

    public var presenter: RandomNumberScenePresenter? {
        return self.viewModel as? RandomNumberScenePresenter
    }
}
