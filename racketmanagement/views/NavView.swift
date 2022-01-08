//
//  NavView.swift
//  racketmanagement
//
//  Created by Jasa Jovan on 07/01/2022.
//

import SwiftUI

struct NavView: View {
    @State private var defaultTab = "Racket"
    
    var body: some View {
        NavigationView {
            TabView(selection: $defaultTab) {
                RacketView()
                    .onTapGesture {
                        defaultTab = "Racket"
                    }
                    .tabItem {
                        Label("Rackets", systemImage: "star")
                    }
                    .tag("Racket")

                LoanView()
                    .onTapGesture {
                        defaultTab = "Loan"
                    }
                    .tabItem {
                        Label("Loans", systemImage: "tray")
                    }
                    .tag("Loan")
            }
            .navigationTitle(Text(defaultTab))
        }
    }
}

struct NavView_Previews: PreviewProvider {
    static var previews: some View {
        NavView()
    }
}
