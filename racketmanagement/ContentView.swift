//
//  ContentView.swift
//  racketmanagement
//
//  Created by Jasa Jovan on 04/01/2022.
//

import SwiftUI

struct ContentView: View {
    @State var examples = [Example]()
    
    var body: some View {
        List(examples) { post in
            Text("\(post.title)")
        }.onAppear() {
            Api().getJson { (examples) in
                self.examples = examples
            }
        }.navigationTitle("examples")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
