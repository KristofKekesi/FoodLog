//
//  SettingsContactView.swift
//  FoodLog
//
//  Created by Kristóf Kékesi on 2022. 02. 25..
//

import UIKit
import SwiftUI

struct SettingsContactView: View {
    var body: some View {
		Form{
			Section(content: {
				HStack{
					Label("Email", systemImage: "at")
					Spacer()
					Text("kristofkekesiofficial@gmail.com").foregroundColor(.secondary)
				}
			}, footer: {
				VStack(alignment: .leading) {
					Text("Send a feature request.")
					Text("Send feedback.")
					Text("Report a bug.")
				}
			})
			Section("Social media") {
				HStack{
					Text("Twitter")
					Spacer()
					Text("@KristofKekesi").foregroundColor(.secondary)
				}
				HStack{
					Text("Instagram")
					Spacer()
					Text("@kristofkekesiofficial").foregroundColor(.secondary)
				}
			}
			.navigationTitle("Contacts")
			.navigationBarTitleDisplayMode(.inline)
		}
    }
}

struct SettingsContactView_Previews: PreviewProvider {
    static var previews: some View {
		SettingsContactView().previewDisplayName("SettingsContactView")
    }
}
