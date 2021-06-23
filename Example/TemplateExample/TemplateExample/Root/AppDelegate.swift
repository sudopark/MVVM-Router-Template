//
//  AppDelegate.swift
//  TemplateExample
//
//  Created by sudo.park on 2021/06/04.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    let diContainer: DependencyInjector
    let viewModel: ApplicationRootViewModel
    
    override init() {
        self.diContainer = DependencyInjector()
        let router = ApplicationRootRouter(nextSceneBuilders: self.diContainer)
        self.viewModel = ApplicationRootViewModelImple(router: router)
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        self.viewModel.handleAppDidLaunched()
        return true
    }
}

