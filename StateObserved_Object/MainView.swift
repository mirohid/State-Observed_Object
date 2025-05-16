//
//  MainView.swift
//  StateObserved_Object
//
//  Created by MacMini6 on 15/05/25.
//

import SwiftUI
final class viewModel: ObservableObject{
    @Published var count: Int = 0
    func IncrementCount(){
        count += 1
    }
    func resetCount(){
        count = 0
 }
}
struct MainView: View {
    @StateObject var vm = viewModel()
    var body: some View {
        VStack(spacing: 24) {
            Text("Main View Count : \(vm.count)")
            
            CounterView(vm: vm)
            incrementButton(vm: vm)
            
            Button("Reset"){
                vm.resetCount()
            }
        }
    }
}
struct CounterView: View {
    @ObservedObject var vm: viewModel
    var body: some View {
        Text("Counter View : \(vm.count)")
            .font(.headline)
            .padding()
            .background(Color.gray.opacity(0.4))
            .cornerRadius(10)
    }
}
struct incrementButton: View {
    @ObservedObject var vm: viewModel
    var body: some View{
        Button("Increment"){
            vm.IncrementCount()
        }
    }
}

#Preview {
    MainView()
}
