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

public protocol RandomNumberSceneInput { }
//
public protocol RandomNumberSceneOutput {
    
    var newRandNumber: Observable<Int> { get }
}


// MARK: - RandomNumberScene

public protocol RandomNumberScene: Scenable {
    
    var input: RandomNumberSceneInput? { get }

    var output: RandomNumberSceneOutput? { get }
}


// MARK: - RandomNumberViewModel conform RandomNumberSceneInput and RandomNumberSceneOutput

extension RandomNumberViewModelImple: RandomNumberSceneInput {

}

extension RandomNumberViewModelImple: RandomNumberSceneOutput { }

// MARK: - RandomNumberViewController provide RandomNumberSceneInput and RandomNumberSceneOutput

extension RandomNumberViewController {

    public var input: RandomNumberSceneInput? {
        return self.viewModel as? RandomNumberSceneInput
    }

    public var output: RandomNumberSceneOutput? {
        return self.viewModel as? RandomNumberSceneOutput
    }
}
