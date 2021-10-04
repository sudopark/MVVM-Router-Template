//
//  EmptyFinalScene.swift
//  TemplateExample
//
//  Created sudo.park on 2021/10/04.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

import RxSwift
import RxCocoa


// MARK: - EmptyFinalScene Interactable & Listenable

public protocol EmptyFinalSceneInteractable { }

public protocol EmptyFinalSceneListenable: AnyObject { }


// MARK: - EmptyFinalScene

public protocol EmptyFinalScene: Scenable {
    
    var interactor: EmptyFinalSceneInteractable? { get }
}


// MARK: - EmptyFinalViewModelImple conform EmptyFinalSceneInteractor

extension EmptyFinalViewModelImple: EmptyFinalSceneInteractable {

}


// MARK: - EmptyFinalViewController provide EmptyFinalSceneInteractor

extension EmptyFinalViewController {

    public var interactor: EmptyFinalSceneInteractable? {
        return self.viewModel as? EmptyFinalSceneInteractable
    }
}
