//
//  BaseViewController.swift
//  MVVM-Router-Template
//
//  Created by ParkHyunsoo on 2021/04/23.
//  Copyright © 2021 ParkHyunsoo. All rights reserved.
//

import UIKit

import RxSwift
import RxCocoa


/// // Parent class for all ViewControllers

open class BaseViewController: UIViewController {
    
    public let disposeBag: DisposeBag = DisposeBag()
}
