//
//  ContentView.swift
//  TestProject0105
//
//  Created by Federico on 01/05/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var tabSelected: Tab = .house
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack {
            VStack {
                TabView(selection: $tabSelected) {
                    ForEach(Tab.allCases, id: \.rawValue) { tab in
                        Text("\(tab.rawValue.capitalized)")
                            .bold()
                            .tag(tab)
                            .animation(nil, value: tabSelected)
                    }
                }
            }
            VStack {
                Spacer()
                CustomTabBar(selectedTab: $tabSelected)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
