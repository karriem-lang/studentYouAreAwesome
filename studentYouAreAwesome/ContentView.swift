//
//  ContentView.swift
//  studentYouAreAwesome
//
//  Created by Karriem Lang on 4/1/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var message = ""
    @State private var imageName = ""
   
    var body: some View {
        
        VStack {
            Text(message)
                .font(.largeTitle)
                .foregroundColor(.red)
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.5)
                .frame(minHeight: 130)
                .animation(.easeInOut(duration: 0.15), value: message)
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
                .animation(.default, value: imageName)
            
            
            
            Spacer()
            
            Button("Press Me!") {
                let messages = ["You Are Awesome!",
                                "You Are Great!",
                                "Fabulous, That's You!",
                                "You Are A Developer!",
                                "You Make Me Smile!",
                                "You Are A Monster Programmer!",
                                "When The Genius Bar Needs Help, They Call You!"]
                imageName = "image\(Int.random(in: 0..<10))"
                message = messages[Int.random(in: 0..<messages.count)]
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
        }
        .padding()
        
    }
}
#Preview {
    ContentView()
}
