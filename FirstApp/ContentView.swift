//
//  ContentView.swift
//  FirstApp
//
//  Created by Farah Alamri on 04/03/1445 AH.
//

import SwiftUI

struct ContentView: View {
    @State  var toggleOff = false
    @State var cups = 0
    let range = 0...10
    
    var body: some View {
        VStack {
            Text("Water Tracker 💦") //add water emoji
            Toggle(isOn: $toggleOff) {
                Text("Apple health")//add text
                if toggleOff == true{
                    Text("water tracker is connected with your apple health")
                }
            }
            .padding()
            
            Stepper(value: $cups, in: range) {
                Text("Cups to drink per day \(cups) 💧")
            }
            .padding()

            Button(/*@START_MENU_TOKEN@*/"Continue"/*@END_MENU_TOKEN@*/) {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*///button action
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
