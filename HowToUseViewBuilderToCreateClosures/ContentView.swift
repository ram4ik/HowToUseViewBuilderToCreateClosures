//
//  ContentView.swift
//  HowToUseViewBuilderToCreateClosures
//
//  Created by ramil on 23.09.2021.
//

import SwiftUI

struct HeaderViewRegular: View {
    
    let title: String
    let description: String?
    let iconName: String?
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            if let description = description {
                Text(description)
                    .font(.callout)
            }
            
            if let iconName = iconName {
                Image(systemName: iconName)
            }
            
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
            HeaderViewRegular(title: "New Title", description: "Hello", iconName: "heart.fill")
            HeaderViewRegular(title: "Another Title", description: nil, iconName: nil)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
