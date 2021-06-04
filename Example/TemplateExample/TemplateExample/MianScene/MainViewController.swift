//
//  MainViewController.swift
//  TemplateExample
//
//  Created sudo.park on 2021/06/04.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

import RxSwift
import RxCocoa


// MARK: - MainViewController

public final class MainViewController: BaseViewController, MainScene {
    
    let viewModel: MainViewModel
    let nameLabel = UILabel()
    let button = UIButton(type: .system)
    let showEmptyButton = UIButton(type: .system)
    
    public init(viewModel: MainViewModel) {
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

extension MainViewController {
    
    private func bind() {
        
        self.button.rx.tap
            .subscribe(onNext: { [weak self] in
                self?.viewModel.showRandomNumber()
            })
            .disposed(by: self.disposeBag)
        
        self.showEmptyButton.rx.tap
            .subscribe(onNext: { [weak self] in
                self?.viewModel.showEmptyFinalScene()
            })
            .disposed(by: self.disposeBag)
    }
}

// MARK: - setup presenting

extension MainViewController: Presenting {
    
    
    public func setupLayout() {
        
        self.view.addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            nameLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            nameLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
        
        
        self.view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            button.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])
        
        self.view.addSubview(showEmptyButton)
        showEmptyButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            showEmptyButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            showEmptyButton.bottomAnchor.constraint(equalTo: self.button.topAnchor, constant: -20)
        ])
    }
    
    public func setupStyling() {
        
        self.nameLabel.textColor = .darkText
        self.nameLabel.text = String(describing: type(of: self))
        
        self.view.backgroundColor = .white
        self.button.setTitle("Show RandomNumber", for: .normal)
        self.showEmptyButton.setTitle("Show EmptyFinal Scene", for: .normal)
    }
}
