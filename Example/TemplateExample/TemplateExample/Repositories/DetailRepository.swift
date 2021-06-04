//
//  RandomNumberRepository.swift
//  TemplateExample
//
//  Created by sudo.park on 2021/06/04.
//

import Foundation


public protocol RandomNumberRepository {
    
    func loadRandomNumberData(_ completed: @escaping (Int) -> Void)
}


public class RandomNumberRepositoryImple: RandomNumberRepository {
    
    public func loadRandomNumberData(_ completed: @escaping (Int) -> Void) {
        let rand = Int.random(in: 0..<10)
        completed(rand)
    }
}
