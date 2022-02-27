//
//  SettingsView.swift
//  FoodLog
//
//  Created by Kristóf Kékesi on 2022. 02. 12..
//

import SwiftUI

struct SettingsView: View {
	@State var haptics: Bool = false
	
    var body: some View {
		NavigationView {
			Form {
				Section {
					NavigationLink(destination: SettingsHealthkitView()) {
						Label("Health", systemImage: "heart.fill").foregroundColor(.pink)
					}
					NavigationLink(destination: SettingsIcloudView()) {
						Label("iCloud", systemImage: "icloud.fill").foregroundColor(.blue)
					}
				}
				Section("Visuals") {
					Text("App Tint")
					Text("App Icon")
					Text("Appearance")
					Toggle(isOn: $haptics) {
						Text("Reduce Haptics")
					}
				}
				Section("Localization") {
					Text("Language")
					Text("LTR and RTL")
				}
				Section(content: {
					NavigationLink(destination: SettingsContactView()) {
						Text("Contacts")
					}
					Button("Website") {
						UIApplication.shared.open(URL(string: "https://www.kekesi.dev")!)
					}.buttonStyle(.plain)
					Text("License")
				}, header: {
					Text("About")
				}, footer: {
					Text("\nMade in 🇭🇺 Hungary.").frame(minWidth: 10, idealWidth: .infinity, maxWidth: .infinity)
				})
					.navigationTitle("Settings")
			}
		}
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
		SettingsView().previewDisplayName("SettingsView")
    }
}
