//
//  ContentView.swift
//  HowToUseViewBuilderToCreateClosures
//
//  Created by ramil on 23.09.2021.
//

import SwiftUI

struct HeaderViewRegular: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Title")
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text("Description")
                .font(.callout)
            
            RoundedRectangle(cornerRadius: 5)
                .frame(height: 2)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderViewRegular()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
