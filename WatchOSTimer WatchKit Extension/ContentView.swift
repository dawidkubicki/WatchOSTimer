//
//  ContentView.swift
//  WatchOSTimer WatchKit Extension
//
//  Created by Dawid Kubicki on 04/12/2020.
//

import SwiftUI

struct ContentView: View {
    
    @State var secondScreenShown = false
    @State var timerVal = 5
    
    var body: some View {
        VStack {
            Text("Start timer for: \(timerVal)")
            Picker(selection: $timerVal, label: Text("Picker")) {
                Text("1").tag(1)
                Text("5").tag(5)
                Text("10").tag(10)
                Text("15").tag(15)
            }
            NavigationLink(
                destination: SecondView(secondScreenShown: $secondScreenShown, timerVal: timerVal),
                isActive: $secondScreenShown,
                label: {
                    Text("Navigate")
                })
        }
    }
}


struct SecondView: View {
    
    @Binding var secondScreenShown: Bool
    @State var timerVal = 1
    
    var body: some View {
        VStack{
            Text("Time remaining")
            Text("\(timerVal)")
            Button(action: {self.secondScreenShown = false}, label: {
                Text("Cancel")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
