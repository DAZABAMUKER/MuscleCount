//
//  ContentView.swift
//  MuscleCount Watch App
//
//  Created by 안병욱 on 2023/01/18.
//

import SwiftUI

struct ContentView: View {
    @State var RepCount: Int = 0
    @State var SetCount: Int = 0
    
    var body: some View {
        GeometryReader{ geometry in
            
            VStack {
                Image(systemName: "dumbbell.fill")
                    .imageScale(.large)
                    .foregroundColor(.red)
                    .font(.system(size: 30))
                LinearGradient(colors: [
                    Color(red: 1, green: 112 / 255.0, blue: 0),
                    Color(red: 226 / 255.0, green: 247 / 255.0, blue: 5 / 255.0)
                ],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                ).mask {
                    Text("Hello, world!\n Sets: \(SetCount) \n Resps: \(RepCount)")
                        .multilineTextAlignment(.center)
                        .foregroundColor(.orange)
                        .bold()
                        .font(.system(size: 30))
                }
            }
            .padding()
            .onTapGesture {
                RepCount += 1
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
            //.background(.red)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
