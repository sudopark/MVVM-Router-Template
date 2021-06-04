//
//  
//  EmptyFinalRouter.swift
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

public protocol EmptyFinalRouting: Routing { }

// MARK: - Routers

// TODO: compose next Scene Builders protocol
public typealias EmptyFinalRouterBuildables = EmptyBuilder

public final class EmptyFinalRouter: Router<EmptyFinalRouterBuildables>, EmptyFinalRouting { }


extension EmptyFinalRouter {
    
    // EmptyFinalRouting implements
}
