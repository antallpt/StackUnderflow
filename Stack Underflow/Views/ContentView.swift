//
//  ContentView.swift
//  Stack Underflow
//
//  Created by Antal Lepetit on 21.06.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LogInView()
            .navigationBarHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
