//
//  SettingsView.swift
//  FoodLog
//
//  Created by Kristóf Kékesi on 2022. 02. 12..
//

import SwiftUI

struct SettingsView: View {
	@State private var tint: String = "green"
	@State private var icon: String = "light"
	@State private var appearance: String = "system"
	@State private var haptics: Bool = false
	@State private var locale: String = "en"
	@State private var ltr: Bool = true
	
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
					Picker("App Tint", selection: $tint) {
						// TODO: organize colors as og apple logo
						Text("Green").tag("green")
						Text("Red").tag("red")
						Text("Blue").tag("blue")
							.navigationTitle("App Tint")
							.navigationBarTitleDisplayMode(.inline)
					}
					Picker("App Icon", selection: $icon) {
						Text("Light").tag("light")
						Text("Dark").tag("dark")
							.navigationTitle("App Icon")
							.navigationBarTitleDisplayMode(.inline)
					}
					Picker("Appearance", selection: $appearance) {
						Text("System").tag("system")
						Text("Light").tag("light")
						Text("Dark").tag("dark")
							.navigationTitle("Appearance")
							.navigationBarTitleDisplayMode(.inline)
					}
					Toggle(isOn: $haptics) {
						Text("Reduce Haptics")
					}
				}
				Section("Localization") {
					Picker("Language", selection: $locale) {
						Text("English").tag("en")
						Text("Hungarian").tag("hu")
						Text("Danish").tag("da")
						Text("German").tag("de")
							.navigationTitle("Language")
							.navigationBarTitleDisplayMode(.inline)
					}
					Picker("LTR and RTL", selection: $ltr) {
						Text("LTR").tag(true)
						Text("RTL").tag(false)
							.navigationTitle("LTR and RTL")
							.navigationBarTitleDisplayMode(.inline)
					}
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
