//
//  ___FILEHEADER___
//


import UIKit
import SwiftUI


// MARK: - ___VARIABLE_sceneName___ViewController

public final class ___VARIABLE_sceneName___ViewController: UIHostingController<___VARIABLE_sceneName___View>, ___VARIABLE_sceneName___Scene {
    
    let viewModel: ___VARIABLE_sceneName___ViewModel
    
    public init(viewModel: ___VARIABLE_sceneName___ViewModel) {
        self.viewModel = viewModel
        
        let rootView = ___VARIABLE_sceneName___View(viewModel: viewModel)
        super.init(rootView: rootView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
        LeakDetector.instance.expectDeallocate(object: self.viewModel)
    }
}
