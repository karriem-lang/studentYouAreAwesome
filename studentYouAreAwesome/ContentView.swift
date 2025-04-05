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
    @State private var imageNumber = 0
    @State private var messageNumber = 0
    
    var body: some View {
        
        VStack {
            Spacer()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
            
            Text(message)
                .font(.largeTitle)
                .foregroundColor(.red)
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            Button("Press Me!") {
                let messages = ["You Are Awesome!",
                                "You Are Great!",
                                "Fabulous, That's You!",
                                "You Are A Developer!",
                                "You Make Me Smile!",
                                "When The Genius Bar Needs Help, They Call You!"]
                imageName = "image\(imageNumber)"
                imageNumber += 1
                
                if imageNumber > 9 {
                    imageNumber = 0
                }
                message = messages[messageNumber]
                messageNumber += 1
                
                if messageNumber == messages.count {
                    messageNumber = 0
                }
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
