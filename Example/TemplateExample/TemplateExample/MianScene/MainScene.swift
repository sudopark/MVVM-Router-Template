//
//  MainScene.swift
//  TemplateExample
//
//  Created sudo.park on 2021/10/04.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

import RxSwift
import RxCocoa


// MARK: - MainScene Interactable & Listenable

public protocol MainSceneInteractable: RandomNumberSceneListenable, EmptyFinalSceneListenable { }

public protocol MainSceneListenable: AnyObject { }


// MARK: - MainScene

public protocol MainScene: Scenable {
    
    var interactor: MainSceneInteractable? { get }
}


// MARK: - MainViewModelImple conform MainSceneInteractor

extension MainViewModelImple: MainSceneInteractable {

}


// MARK: - MainViewController provide MainSceneInteractor

extension MainViewController {

    public var interactor: MainSceneInteractable? {
        return self.viewModel as? MainSceneInteractable
    }
}
