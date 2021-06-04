//
//  EmptyFinalScene.swift
//  TemplateExample
//
//  Created sudo.park on 2021/06/04.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

import RxSwift
import RxCocoa


// MARK: - EmptyFinalScene Interactor & Presenter

//public protocol EmptyFinalSceneInteractor { }
//
//public protocol EmptyFinalScenePresenter { }


// MARK: - EmptyFinalScene

public protocol EmptyFinalScene: Scenable {
    
//    var sceneInteractor: EmptyFinalSceneInteractor? { get }
//
//    var scenePresenrer: EmptyFinalScenePresenter? { get }
}


// MARK: - EmptyFinalViewModelImple conform EmptyFinalSceneInteractor or EmptyFinalScenePresenter

//extension EmptyFinalViewModelImple: EmptyFinalSceneInteractor {
//
//}
//
//extension EmptyFinalViewModelImple: EmptyFinalScenePresenter {
//
//}

// MARK: - EmptyFinalViewController provide EmptyFinalSceneInteractor or EmptyFinalScenePresenter

//extension EmptyFinalViewController {
//
//    public var sceneInteractor: EmptyFinalSceneInteractor? {
//        return self.viewModel as? EmptyFinalSceneInteractor
//    }
//
//    public var scenePresenrer: EmptyFinalScenePresenter? {
//        return self.viewModel as? EmptyFinalScenePresenter
//    }
//}
