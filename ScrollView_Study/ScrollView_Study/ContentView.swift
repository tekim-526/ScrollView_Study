//
//  ContentView.swift
//  ScrollView_Study
//
//  Created by Kim TaeSoo on 2022/01/07.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        ScrollView {
            ScrollViewReader { value in
                Button("jump to #8") {
                    value.scrollTo(100)
                }
                ForEach(0..<100) { i in
                    Text(String(i))
                        .font(.title)
                        .frame(width: 200, height: 200, alignment: .center)
                        .id(i)
                }
            }
        }.frame(height: 350)
        
    }
}

/*
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
*/
