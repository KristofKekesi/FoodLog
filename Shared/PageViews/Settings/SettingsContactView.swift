//
//  SettingsContactView.swift
//  FoodLog
//
//  Created by Kristóf Kékesi on 2022. 02. 25..
//

import SwiftUI

struct SettingsContactView: View {
    var body: some View {
		NavigationView {
			Form{
				Section("Email") {
					Label("Report bug", systemImage: "at")
					Label("Feature request", systemImage: "at")
					Label("Generic email", systemImage: "at")
				}
				Section("Social media") {
					Label("Twitter", systemImage: "at")
					Label("Instagram", systemImage: "at")
				}
			}
			.navigationTitle("Contact")
		}
    }
}

struct SettingsContactView_Previews: PreviewProvider {
    static var previews: some View {
		SettingsContactView().previewDisplayName("SettingsContactView")
    }
}
