//
//
// ContentView.swift
// ScrollViewRTLExample
//
// Created by Muhammad Azad on 02/02/2024
// Copyright © 2024 Muhammad Azad. All rights reserved.
//
        

import SwiftUI
import ScrollViewRTL

struct ContentView: View {
    @State var lang = "en"
    @State var dir: LayoutDirection = .leftToRight
    var body: some View {
        VStack(spacing: 20){
            Button {
                lang = "ar"
                dir = .rightToLeft
            } label: {
                Text("تغيير اللغة إلى العربية")
            }
            
            Button {
                lang = "en"
                dir = .leftToRight
            } label: {
                Text("Change language to english")
            }
            

            
            ScrollViewRTL(type: .horizontal){
                HStack(spacing: 20) {
                    ForEach(0..<3) {
                        Text("Item \($0)")
                            .foregroundColor(.white)
                            .font(.body)
                            .frame(width: 80, height: 40)
                            .background(Color.red)
                    }
                }
            }
            .padding(.top, 40)
        }
        .environment(\.locale, Locale(identifier: lang))
        .environment(\.layoutDirection, dir)
        
    }
}

#Preview {
    ContentView()
}
