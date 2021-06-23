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


// MARK: - RandomNumberScene Input & Output

//public protocol RandomNumberSceneInput { }
//
public protocol RandomNumberSceneOutput {
    
    var newRandNumber: Observable<Int> { get }
}


// MARK: - RandomNumberScene

public protocol RandomNumberScene: Scenable {
    
//    var input: RandomNumberSceneInput? { get }
//
    var output: RandomNumberSceneOutput? { get }
}


// MARK: - RandomNumberViewModel conform RandomNumberSceneInteractor or RandomNumberScenePresenter

//extension RandomNumberViewModelImple: RandomNumberSceneInteractor {
//
//}
//
extension RandomNumberViewModelImple: RandomNumberSceneOutput { }

// MARK: - RandomNumberViewController provide RandomNumberSceneInteractor or RandomNumberScenePresenter

extension RandomNumberViewController {

//    public var interactor: RandomNumberSceneInteractor? {
//        return self.viewModel as? RandomNumberSceneInteractor
//    }

    public var output: RandomNumberSceneOutput? {
        return self.viewModel as? RandomNumberSceneOutput
    }
}
