//
//  MainView.swift
//  FSWalkie
//
//  Created by Rayen Kamta on 10/21/21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            TalkieView()
                .tabItem {
                    Label("Main", systemImage: "list.dash")
                }

            HistoryView()
                .tabItem {
                    Label("History", systemImage: "square.and.pencil")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
