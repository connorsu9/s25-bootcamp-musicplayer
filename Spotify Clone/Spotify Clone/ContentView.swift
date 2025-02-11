//
//  ContentView.swift
//  Spotify Clone
//
//  Created by Connor Su on 2/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack {
                
                // top of spotify
                HStack {
                    Image(systemName: "chevron.down")
                    Spacer()
                    Text("Sad Songs")
                        .font(.caption)
                    Spacer()
                    Image(systemName: "ellipsis")
                }
                .font(.title2)
                .padding()
                Spacer()
                
                // image
                Image("Niki")
                    .resizable()
                    .frame(width: 360, height: 360)
                    .shadow(radius: 10)
                
                // title, artist, and heart
                HStack {
                    VStack(alignment: .leading) {
                        Text("Before")
                            .font(.title)
                        Text("Niki")
                            .font(.title3)
                    }
                    Spacer()
                    Image(systemName: "heart")
                        .font(.largeTitle)
                }
                .padding()
                
                VStack {
                    Slider(value: .constant(1.0), in: -100...100, step: 1)
                        .accentColor(.white)
                    HStack {
                        Text("2:50")
                        Spacer()
                        Text("2:05")
                    }
                    .font(.caption)
                }
                .padding()
                
                HStack {
                    Image(systemName: "shuffle")
                    Spacer()
                    Image(systemName: "backward.end")
                    Spacer()
                    Image(systemName: "play.circle")
                        .font(.largeTitle)
                    Spacer()
                    Image(systemName: "forward.end")
                    Spacer()
                    Image(systemName: "arrow.trianglehead.rectanglepath")
                }
                .font(.title2)
                .padding()
                Spacer()
                HStack {
                    Image(systemName: "tv.and.hifispeaker.fill")
                    Spacer()
                    Image(systemName: "square.and.arrow.up")
                        .padding()
                    Image(systemName: "text.line.first.and.arrowtriangle.forward")
                }
                .padding()
                Spacer()
            }
        }
        .foregroundStyle(.black)
        .background(
                LinearGradient(gradient: Gradient(colors: [.white, .brown]), startPoint: .top, endPoint: .bottom))
    }
}

#Preview {
    ContentView().preferredColorScheme(.dark)
}
