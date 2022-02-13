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
					Text("Health")
					Text("iCloud")
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
					Text("Contact")
				}, header: {
					Text("About")
				}, footer: {
					VStack(alignment: .leading) {
						VStack(alignment: .leading) {
							Text("Suggest ingredients.")
							Text("Send feedback.")
						}
						Text("\nMade in 🇭🇺 Hungary.").frame(minWidth: 10, idealWidth: .infinity, maxWidth: .infinity)
					}
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
