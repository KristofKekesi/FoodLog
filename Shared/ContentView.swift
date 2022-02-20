//
//  ContentView.swift
//  Shared
//
//  Created by Kristóf Kékesi on 2022. 02. 10..
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		TabView {
			HomeView().tabItem {
			Image(systemName: "heart.text.square.fill")
			Text("Home")
		}
			AllView().tabItem {
				Image(systemName: "fork.knife")
				Text("Meals")
			}
			HistoryView().tabItem {
				Image(systemName: "chart.xyaxis.line")
				Text("History")
			}
			SettingsView().tabItem {
				Image(systemName: "ellipsis")
				Text("Settings")
			}
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView().previewDisplayName("Main")
	}
}
