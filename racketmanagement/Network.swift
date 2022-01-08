//
//  Network.swift
//  racketmanagement
//
//  Created by Jasa Jovan on 08/01/2022.
//

import Foundation

class Api : ObservableObject {
    @Published var loans = [Loan]()
    @Published var rackets = [Racket]()
    
    func getLoans(completion:@escaping ([Loan]) -> ()) {
        guard let url = URL(string: "https://racketmanagement.azurewebsites.net/api/loan") else { print("Napacen url ...")
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            let loans = try! JSONDecoder().decode([Loan].self, from: data!)
            DispatchQueue.main.async {
                completion(loans)
            }
        }.resume()
    }
    
    func getRackets(completion:@escaping ([Racket]) -> ()) {
        guard let url = URL(string: "https://racketmanagement.azurewebsites.net/api/racket") else { print("Napacen url ...")
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            let rackets = try! JSONDecoder().decode([Racket].self, from: data!)
            DispatchQueue.main.async {
                completion(rackets)
            }
        }.resume()
    }
}
