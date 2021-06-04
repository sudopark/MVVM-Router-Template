//
//  RandomNumberViewController.swift
//  TemplateExample
//
//  Created sudo.park on 2021/06/04.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

import RxSwift
import RxCocoa


// MARK: - RandomNumberViewController

public final class RandomNumberViewController: BaseViewController, RandomNumberScene {
    
    let viewModel: RandomNumberViewModel
    
    let numberLabel = UILabel()
    let makeButton = UIButton(type: .system)
    
    public init(viewModel: RandomNumberViewModel) {
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

extension RandomNumberViewController {
    
    private func bind() {
        
        self.viewModel.newRandNumber
            .map{ "RandNumber: \($0)" }
            .bind(to: self.numberLabel.rx.text)
            .disposed(by: self.disposeBag)
        
        self.makeButton.rx.tap
            .subscribe(onNext: { [weak self] in
                self?.viewModel.makeRandNumber()
            })
            .disposed(by: self.disposeBag)
    }
}

// MARK: - setup presenting

extension RandomNumberViewController: Presenting {
    
    
    public func setupLayout() {
        
        self.view.addSubview(numberLabel)
        numberLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            numberLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            numberLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -30)
        ])
        
        self.view.addSubview(makeButton)
        makeButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            makeButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            makeButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 20)
        ])
    }
    
    public func setupStyling() {
        self.view.backgroundColor = .white
        
        self.numberLabel.textColor = .darkText
        self.numberLabel.text = "--"
        self.makeButton.setTitle("Make", for: .normal)
    }
}
