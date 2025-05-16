//
//  EnvironmentExample.swift
//  StateObserved_Object
//
//  Created by MacMini6 on 16/05/25.
//

import SwiftUI

class userData: ObservableObject {
    @Published var name: String = "Welcome - Tech Exactly"
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
        Text(userModel.name)
        Text("This is the last view")
            .font(.largeTitle)
            .bold()
            .padding()
            .background(Color.gray.opacity(0.4))
            .cornerRadius(20)
    }
}


#Preview {
    EnvironmentExample()
}
