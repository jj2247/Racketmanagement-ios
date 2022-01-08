//
//  Book.swift
//  racketmanagement
//
//  Created by Jasa Jovan on 04/01/2022.
//

import Foundation

struct Loan: Codable, Identifiable {
    let id = UUID()
    var loanID: Int
    var returnDate: String
    var applicationUser: ApplicationUser
    var racket: Racket
}
