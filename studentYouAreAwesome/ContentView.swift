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
            Spacer()
            
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
            
            Spacer()
            
            Button("Press Me!") {
                let imageName1 = "sun.max.fill"
                let imageName2 = "hand.thumbsup"
                let message1 = "You Are Awesome!"
                let message2 = "You Are Great!"
                
                //                if message == message2 {
                //                    message = message1
                //                    imageName = imageName1
                //                } else {
                //                    message = message2
                //                    imageName = imageName2
                //                }
                
                message = (message == message2 ? message1 : message2)
                imageName = (imageName == imageName2 ? imageName1 : imageName2)
            }
            
            .buttonStyle(.borderedProminent)
            .tint(.orange)
            .font(.title2)
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
