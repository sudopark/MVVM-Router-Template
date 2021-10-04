//
//  RandomNumberScene.swift
//  TemplateExample
//
//  Created sudo.park on 2021/10/04.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

import RxSwift
import RxCocoa


// MARK: - RandomNumberScene Interactable & Listenable

public protocol RandomNumberSceneInteractable { }

public protocol RandomNumberSceneListenable: AnyObject {
    
    func newRandNumberMade(_ newValue: Int)
}


// MARK: - RandomNumberScene

public protocol RandomNumberScene: Scenable {
    
    var interactor: RandomNumberSceneInteractable? { get }
}


// MARK: - RandomNumberViewModelImple conform RandomNumberSceneInteractor

extension RandomNumberViewModelImple: RandomNumberSceneInteractable {

}


// MARK: - RandomNumberViewController provide RandomNumberSceneInteractor

extension RandomNumberViewController {

    public var interactor: RandomNumberSceneInteractable? {
        return self.viewModel as? RandomNumberSceneInteractable
    }
}
