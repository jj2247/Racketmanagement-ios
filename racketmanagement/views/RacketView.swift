//
//  RacketView.swift
//  racketmanagement
//
//  Created by Jasa Jovan on 07/01/2022.
//

import SwiftUI

struct RacketView: View {
    @State var rackets = [Racket]()
    
    var body: some View {
        List(rackets) { racket in
            Text("\(racket.brand.name) \(racket.model.name) \(racket.gripSize.size)")
        }
        .onAppear() {
            Api().getRackets { (rackets) in
                self.rackets = rackets
            }
        }
    }
}

struct RacketView_Previews: PreviewProvider {
    static var previews: some View {
        RacketView()
    }
}
