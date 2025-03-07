//
//  ContentView.swift
//  LittleLemon
//
//  Created by Rajesh Kanna V on 2025-02-22.
//

import SwiftUI

struct ContentView: View {
    @State var personCount: Int = 1
        
    var body: some View {
        VStack {
            Text("Little Lemon")
            Text("Reservations")
            Stepper {
                Text("Reservation for: \(personCount)")
            } onIncrement: {
                personCount += 1
            } onDecrement: {
                personCount = (personCount == 1) ? 1 : personCount - 1
            }
        }
        .padding()
    }
}

//#Preview {
//    ContentView()
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(personCount: 10)
    }
}
