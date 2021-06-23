//
//  ___FILEHEADER___
//

import UIKit

import RxSwift
import RxCocoa

import CommonPresenting


// MARK: - ___VARIABLE_sceneName___Scene Interactable & Listenable

public protocol ___VARIABLE_sceneName___SceneInteractable { }

public protocol ___VARIABLE_sceneName___SceneListenable: AnyObject { }


// MARK: - ___VARIABLE_sceneName___Scene

public protocol ___VARIABLE_sceneName___Scene: Scenable {
    
    var interactor: ___VARIABLE_sceneName___SceneInteractable? { get }
}


// MARK: - ___VARIABLE_sceneName___ViewModelImple conform ___VARIABLE_sceneName___SceneInteractor

extension ___VARIABLE_sceneName___ViewModelImple: ___VARIABLE_sceneName___SceneInteractable {

}


// MARK: - ___VARIABLE_sceneName___ViewController provide ___VARIABLE_sceneName___SceneInteractor

extension ___VARIABLE_sceneName___ViewController {

    public var interactor: ___VARIABLE_sceneName___SceneInteractable? {
        return self.viewModel as? ___VARIABLE_sceneName___SceneInteractable
    }
}
