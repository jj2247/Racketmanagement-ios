//
//  Racket.swift
//  racketmanagement
//
//  Created by Jasa Jovan on 08/01/2022.
//

import Foundation

struct Racket: Codable, Identifiable {
    let id = UUID()
    var racketID: Int
    var brand: Brand
    var model: Model
    var gripSize: GripSize
}
