//
//  ContentView.swift
//  Interactive Lesson App
//
//  Created by Eileen Wang on 6/21/24.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var titleText = "What is your name?"
    
    var body: some View {
        VStack (spacing: 100){
            Text(titleText).font(.largeTitle)
            
            TextField("Type your name...", text: $name).multilineTextAlignment(.center)
                .font(.title)
                .border(Color.black, width: 2)
            
                .padding(40)
            
            Button("Submit name"){
                titleText = "Welcome, \(name)!"
                
            }
            .font(.title2)
            .buttonStyle(.borderedProminent).tint(.cyan)
            .padding()
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
