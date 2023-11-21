//
//  ContentView.swift
//  GetVolume
//
//  Created by 柿崎逸 on 2023/11/21.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }.padding()
            .onAppear {
                // 取得
                let audioSession = AVAudioSession.sharedInstance()
                do {
                    try audioSession.setActive(true)
                    let volume = audioSession.outputVolume
                    print("Output Volume: \(volume)")
                } catch {
                    print("Failed to set audio session active: \(error)")
                }
            }
    }
}

#Preview {
    ContentView()
}
