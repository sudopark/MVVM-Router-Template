//
//  MainScene.swift
//  TemplateExample
//
//  Created sudo.park on 2021/06/04.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

import RxSwift
import RxCocoa


// MARK: - MainScene Interactor & Presenter

//public protocol MainSceneInteractor { }
//
//public protocol MainScenePresenter { }


// MARK: - MainScene

public protocol MainScene: Scenable {
    
//    var ineteractor: MainSceneInteractor { get }
//
//    var presenter: MainScenePresenter { get }
}


// MARK: - MainViewModel conform MainSceneInteractor or MainScenePresenter

//extension MainViewModelImple: MainSceneInteractor {
//
//}
//
//extension MainViewModelImple: MainScenePresenter {
//
//}

// MARK: - MainViewController provide MainSceneInteractor or MainScenePresenter

//extension MainViewController {
//
//    public var ineteractor: MainSceneInteractor {
//        return self.viewModel
//    }
//
//    public var presenter: MainScenePresenter {
//        return self.viewModel
//    }
//}
