//
//  11.swift
//  Library
//
//  Created by fai alradhi on 27/08/1445 AH.
//

import SwiftUI

struct GirlView: View {
    var body: some View {
        // Your GirlView content here
       girl()
    }
}

struct BoyView: View {
    var body: some View {
      boy()
    }
}

struct TabViewExample: View {
    var body: some View {
        TabView {
            GirlView()
                .tabItem { Label("Girl", systemImage: "person.fill") }
                .tag(0)

            BoyView()
                .tabItem { Label("Boy", systemImage: "person.fill") }
                .tag(1)
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct TabViewExample_Previews: PreviewProvider {
    static var previews: some View {
        TabViewExample()
    }
}

