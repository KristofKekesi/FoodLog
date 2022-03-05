//
//  SettingsHealthkitView.swift
//  FoodLog
//
//  Created by Kristóf Kékesi on 2022. 02. 26..
//

import SwiftUI
import HealthKit

struct SettingsHealthkitView: View {
	var body: some View {
		Form {
			Section("Access") {
				Button {
					// TODO: ask for permission
				} label: {
					Label("Grant access", systemImage: "heart.text.square.fill").foregroundColor(.white).frame(minWidth: 0, idealWidth: .infinity, maxWidth: .infinity, minHeight: 0,maxHeight: .infinity)
				}.buttonStyle(.borderedProminent).accentColor(.green).background(.green).listRowInsets(EdgeInsets())
			}
			InfoPaneView(
				title: "We don't want to reinwent the wheel.",
				content: "Health provides charts and explanations about nutrients and more than 100 medical records. For the data we write we suggest using Health.",
				response: AnyView(Button {
					UIApplication.shared.open(URL(string: 	"x-apple-health://browse/")!)
		  } label: {
			  Label("Open Health", systemImage: "heart.text.square.fill").foregroundColor(.white)
		  }.accentColor(.pink).buttonStyle(.borderedProminent)
			),
				colors: [.red, .pink, .orange, .yellow, .purple, .indigo, .pink, .red]).listRowInsets(EdgeInsets())
			Section {
				ForEach(0..<usedNutrients.count, id: \.self) { num in
					NutrientAccess(name: usedNutrientsName[num], nutrient: usedNutrients[num])
				}
			} footer: {
				Text("Granting all nutrients are essential for user experience.")
			}
			Section {
				Button {
					
				} label: {
					Label("Deny access", systemImage: "heart.text.square.fill").foregroundColor(.white).frame(minWidth: 0, idealWidth: .infinity, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
				}.buttonStyle(.borderedProminent).accentColor(.red).background(.red).listRowInsets(EdgeInsets())
			} header: {
				Text("Access")
			} footer: {
				Text("Denying access to write Health Data will result in Nutrients not working as intended.")
			}
		}.navigationTitle("Health Data")
			.navigationBarTitleDisplayMode(.inline)
	}
}

struct SettingsHealthkitView_Previews: PreviewProvider {
    static var previews: some View {
		SettingsHealthkitView().previewDisplayName("SettingsHealthKitView")
    }
}
