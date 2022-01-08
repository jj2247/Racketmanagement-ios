//
//  LoanView.swift
//  racketmanagement
//
//  Created by Jasa Jovan on 04/01/2022.
//

import SwiftUI
import Foundation

func getDate(inputDate: String) -> String {
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS"
    let oldDate = formatter.date(from: inputDate)
    
    let convertDateFormatter = DateFormatter()
    convertDateFormatter.dateFormat = "dd.MM.yyyy"
    return convertDateFormatter.string(from: oldDate!)
}

struct LoanView: View {
    @State var loans = [Loan]()
    
    var body: some View {
        List(loans) { loan in
            Text("\(loan.applicationUser.firstName) \(loan.applicationUser.lastName)\n\(loan.racket.brand.name) \(loan.racket.model.name) \(loan.racket.gripSize.size)\n\(loan.applicationUser.phoneNumber)\n\(getDate(inputDate: loan.returnDate))")
        }
        .onAppear() {
            Api().getLoans { (loans) in
                self.loans = loans
            }
        }
    }
}

struct LoanView_Previews: PreviewProvider {
    static var previews: some View {
        LoanView()
    }
}
