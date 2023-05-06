//  /*
//
//  Project: Implementing a ScrollView in SwiftUI
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 06.05.2023
//
//  */

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        ScrollView {
            VStack {
                ForEach(0..<100) {index in
                    ScrollView(.horizontal, showsIndicators: false,
                               content: {
                        HStack {
                            ForEach(0..<200) {index in
                                RoundedRectangle(cornerRadius: 20.5)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    })
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
