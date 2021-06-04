//
//  DIContainers.swift
//  MVVM-Router-Template
//
//  Created by ParkHyunsoo on 2021/04/23.
//  Copyright © 2021 ParkHyunsoo. All rights reserved.
//

import Foundation


// MARK: - DIContainers

public final class DIContainers {
    
    
}

extension DIContainers: EmptyBuilder { }


extension DIContainers {
    
    public var randomNumberRepository: RandomNumberRepository {
        
        return RandomNumberRepositoryImple()
    }
}
