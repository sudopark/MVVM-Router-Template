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


// MARK: - MainScene Input & Output

public protocol MainSceneInput { }

public protocol MainSceneOutput { }


// MARK: - MainScene

public protocol MainScene: Scenable {
    
    var input: MainSceneInput? { get }

    var output: MainSceneOutput? { get }
}


// MARK: - MainViewModel conform MainSceneInput and MainSceneOutput

extension MainViewModelImple: MainSceneInput {

}

extension MainViewModelImple: MainSceneOutput {

}

// MARK: - MainViewController provide MainSceneInput and MainSceneOutput

extension MainViewController {

    public var input: MainSceneInput? {
        return self.viewModel as? MainSceneInput
    }

    public var output: MainSceneOutput? {
        return self.viewModel as? MainSceneOutput
    }
}
