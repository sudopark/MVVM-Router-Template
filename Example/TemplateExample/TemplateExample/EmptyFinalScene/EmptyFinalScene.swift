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


// MARK: - EmptyFinalScene Input & Output

public protocol EmptyFinalSceneInput { }

public protocol EmptyFinalSceneOutput { }


// MARK: - EmptyFinalScene

public protocol EmptyFinalScene: Scenable {
    
    var input: EmptyFinalSceneInput? { get }
//
    var output: EmptyFinalSceneOutput? { get }
}


// MARK: - EmptyFinalViewModelImple conform EmptyFinalSceneInput and EmptyFinalSceneOutput

extension EmptyFinalViewModelImple: EmptyFinalSceneInput {

}

extension EmptyFinalViewModelImple: EmptyFinalSceneOutput {

}

// MARK: - EmptyFinalViewController provide EmptyFinalSceneInput and EmptyFinalSceneOutput

extension EmptyFinalViewController {

    public var input: EmptyFinalSceneInput? {
        return self.viewModel as? EmptyFinalSceneInput
    }

    public var output: EmptyFinalSceneOutput? {
        return self.viewModel as? EmptyFinalSceneOutput
    }
}
