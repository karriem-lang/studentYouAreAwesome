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
    @State private var messageNumber = -1
    @State private var lastMessageNumber = -1
    @State private var imageNumber = -1
    @State private var lastImageNumber = -1
   
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
            
            Button("Show Message") {
                let messages = ["You Are Awesome!",
                                "You Are Great!",
                                "Fabulous, That's You!",
                                "You Are A Developer!",
                                "You Make Me Smile!",
                                "You Are A Monster Programmer!",
                                "When The Genius Bar Needs Help, They Call You!"]
                
                var messageNumber = Int.random(in: 0..<messages.count)
                while messageNumber == lastMessageNumber {
                    messageNumber = Int.random(in: 0..<messages.count)
                }
                message = messages[messageNumber]
                lastMessageNumber = messageNumber
                
                var imageNumber = Int.random(in: 0..<10)
                while imageNumber == lastImageNumber {
                    imageNumber = Int.random(in: 0..<10)
                }
                imageName = "image\(imageNumber)"
                lastImageNumber = imageNumber
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
