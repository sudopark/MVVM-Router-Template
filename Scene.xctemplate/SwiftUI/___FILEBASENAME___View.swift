//
//  ___FILEHEADER___
//


import UIKit
import SwiftUI

import RxSwift
import RxCocoa

import Domain
import CommonPresenting


// MARK: - ___VARIABLE_sceneName___ViewController

public final class ___VARIABLE_sceneName___ViewStateObject: ObservableObject {
    
    private let disposeBag = DisposeBag()
    private var didBind = false
    
    public func bind(_ viewModel: ___VARIABLE_sceneName___ViewModel) {
        
        guard self.didBind == false else { return }
        self.didBind = true
        
        // TODO: bind state
    }
}


// MARK: - ___VARIABLE_sceneName___View

public struct ___VARIABLE_sceneName___View: View {
    
    private let viewModel: ___VARIABLE_sceneName___ViewModel
    @StateObject var states: ___VARIABLE_sceneName___ViewStateObject = .init()
    
    public init(viewModel: ___VARIABLE_sceneName___ViewModel) {
        self.viewModel = viewModel
    }
    
    public var body: some View {
        Text("___VARIABLE_sceneName___View")
        .onAppear {
            self.states.bind(self.viewModel)
        }
    }
}
