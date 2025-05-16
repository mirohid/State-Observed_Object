//
//  StateBinding.swift
//  StateObserved_Object
//
//  Created by MacMini6 on 16/05/25.
//

import SwiftUI

struct StateBinding: View {
    @State private var count: Int = 0
    
    var body: some View {
        VStack{
            Text("Count : \(count)")
            anotherview(count: $count)
        }
    }
}

struct anotherview: View {
    @Binding var count: Int
    var body: some View {
        Button("Click Me") {
            count += 1
        }
    }
}

#Preview {
    StateBinding()
}
