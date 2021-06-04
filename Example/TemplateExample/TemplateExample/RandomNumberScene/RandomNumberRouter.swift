//
//  
//  RandomNumberRouter.swift
//  TemplateExample
//
//  Created by sudo.park on 2021/06/04.
//
//  TemplateExample
//
//  Created sudo.park on 2021/06/04.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit


// MARK: - Routing

public protocol RandomNumberRouting: Routing { }

// MARK: - Routers

// TODO: compose next Scene Builders protocol
public typealias RandomNumberRouterBuildables = EmptyBuilder

public final class RandomNumberRouter: Router<RandomNumberRouterBuildables>, RandomNumberRouting { }


extension RandomNumberRouter {
    
    // RandomNumberRouting implements
}
