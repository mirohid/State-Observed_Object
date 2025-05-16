//
//  EnvironmentExample.swift
//  StateObserved_Object
//
//  Created by MacMini6 on 16/05/25.
//

import SwiftUI

class userData: ObservableObject {
    @Published var name: any View = textname()
}

struct textname: View {
    var body: some View {
        Text("Welcome - Tech Exactly")
            .font(.headline)
            .background(Color.yellow.opacity(0.4))
            .padding()
    }
}

struct EnvironmentExample: View {
    @StateObject var userModel = userData()
    var body: some View {
        NavigationStack{
            NavigationLink("Go to Second view ") {
                secondChildview()
            }
        }
        .environmentObject(userModel)
    }
}

struct secondChildview: View {
    var body: some View {
        NavigationLink("Go to third view ") {
            thirdChildview()
        }
    }
}

struct thirdChildview: View {
    var body: some View {
        NavigationLink("Go to fourth view ") {
            fourthChildview()
        }
    }
}

struct fourthChildview: View {
    var body: some View {
        NavigationLink("Go to fifth view ") {
            fifthChildview()
        }
    }
}

struct fifthChildview: View {
    @EnvironmentObject var userModel: userData
    var body: some View {
        AnyView(userModel.name)
        Text("This is the last view")
            .font(.title2)
            .bold()
            .padding()
            .background(Color.gray.opacity(0.4))
            .cornerRadius(20)
    }
}


#Preview {
    EnvironmentExample()
}
