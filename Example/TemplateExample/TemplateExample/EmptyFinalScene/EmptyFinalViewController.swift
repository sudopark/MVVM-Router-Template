//
//  EmptyFinalViewController.swift
//  TemplateExample
//
//  Created sudo.park on 2021/06/04.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

import RxSwift
import RxCocoa


// MARK: - EmptyFinalViewController

public final class EmptyFinalViewController: BaseViewController, EmptyFinalScene {
    
    let viewModel: EmptyFinalViewModel
    
    public init(viewModel: EmptyFinalViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
        LeakDetector.instance.expectDeallocate(object: self.viewModel)
    }
    
    public override func loadView() {
        super.loadView()
        self.setupLayout()
        self.setupStyling()
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        self.bind()
    }
    
}

// MARK: - bind

extension EmptyFinalViewController {
    
    private func bind() {
        
    }
}

// MARK: - setup presenting

extension EmptyFinalViewController: Presenting {
    
    
    public func setupLayout() {
        
    }
    
    public func setupStyling() {
        
        self.view.backgroundColor = .white
    }
}
