//
//  ContentView.swift
//  StateObserved_Object
//
//  Created by MacMini6 on 15/05/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = viewModel()
    var body: some View {
        VStack(spacing: 20 ) {
            Text("Count = \(vm.count)")
            Button {
                vm.IncrementCount()
            } label: {
                Text("Increment")
            }
        }
        .padding()
    }
}

struct RnadomNumberGenerator: View {
    @State private var randomNumber: Int?
    var body: some View {
        VStack{
            Text("Random Number: = \(randomNumber ?? 0)")
            Button("Generate Ramdom Number"){
                randomNumber = Int.random(in: 0...1000)
            }
            ContentView()
        }
    }
}

#Preview {
    RnadomNumberGenerator()
}
