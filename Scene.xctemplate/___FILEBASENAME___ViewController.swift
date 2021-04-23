//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

import RxSwift
import RxCocoa

import Domain


// MARK: - ___VARIABLE_TableViewModule___ViewController

public final class ___VARIABLE_sceneName___ViewController: BaseViewController {
    
    private let viewModel: ___VARIABLE_sceneName___ViewModel
    private let router: ___VARIABLE_sceneName___Router
    
    public init(viewModel: ___VARIABLE_sceneName___ViewModel, router: ___VARIABLE_sceneName___Router) {
        self.viewModel = viewModel
        self.router = router
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func loadView() {
        super.loadView()
        self.setupLayout()
        self.setupStyling()
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

// MARK: - bind

extension ___VARIABLE_sceneName___ViewController {
    
    private func bind() {
        
    }
}

// MARK: - setup presenting

extension ___VARIABLE_sceneName___ViewController: PresentSetup {
    
    
    public func setupLayout() {
        
    }
    
    public func setupStyling() {
        
    }
}
