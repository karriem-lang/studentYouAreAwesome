//
//  ContentView.swift
//  studentYouAreAwesome
//
//  Created by Karriem Lang on 4/1/25.
//

import SwiftUI
import AVFAudio

struct ContentView: View {
    
    @State private var message = ""
    @State private var imageName = ""
    @State private var soundName = ""
    @State private var lastSoundNumber = -1
    @State private var lastMessageNumber = -1
    @State private var lastImageNumber = -1
    @State private var audioPlayer: AVAudioPlayer!
    let numberOfSounds = 6
    let numberOfImages = 10
    
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
                
                var messageNumber: Int
                repeat {
                    messageNumber = Int.random(in: 0..<messages.count)
                } while messageNumber == lastMessageNumber
                message = messages[messageNumber]
                lastMessageNumber = messageNumber
                
                var imageNumber: Int
                repeat {
                    imageNumber = Int.random(in: 0..<numberOfImages)
                } while imageNumber == lastImageNumber
                imageName = "image\(imageNumber)"
                lastImageNumber = imageNumber
                
                var soundNumber: Int
                repeat {
                    soundNumber = Int.random(in: 0..<numberOfSounds)
                } while soundNumber == lastSoundNumber
                soundName = "sound\(soundNumber)"
                lastSoundNumber = soundNumber
                
//                let soundName = "sound0"
                guard let soundFile = NSDataAsset(name: soundName) else {
                    print("😡 Could not read file named \(soundName)")
                    return
                }
                do {
                    audioPlayer = try AVAudioPlayer(data: soundFile.data)
                    audioPlayer.play()
                } catch {
                    print("😡 ERROR: \(error.localizedDescription) creating audioPlayer.")
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
