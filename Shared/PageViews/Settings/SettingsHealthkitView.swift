//
//  SettingsHealthkitView.swift
//  FoodLog
//
//  Created by Kristóf Kékesi on 2022. 02. 26..
//

import SwiftUI

struct SettingsHealthkitView: View {
	var body: some View {
		Form {
			Section("Access") {
				Button {
					print(usedNutrients.count)
					print(usedNutrientsName.count)
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
					NutrientAccess(name: usedNutrientsName[num], isDenied: false)
				}
			}
			Section {
				Group {
					HStack {
						Label("Biotin", systemImage: "leaf")
						Spacer()
						Text("Granted").foregroundColor(.secondary)
					}
					HStack {
						Label("Caffeine", systemImage: "leaf")
						Spacer()
						Text("Denied").foregroundColor(.red)
					}
					Label("Calcium", systemImage: "leaf")
					Label("Carbohydrates", systemImage: "leaf")
					Label("Chloride", systemImage: "leaf")
					Label("Chromium", systemImage: "leaf")
					Label("Copper", systemImage: "leaf")
					Label("Dietary Cholesterol", systemImage: "leaf")
					Label("Dietary Energy", systemImage: "leaf")
					Label("Dietary Sugar", systemImage: "leaf")
				}
				Group {
					Label("Fibre", systemImage: "leaf")
					Label("Folate", systemImage: "leaf")
					Label("Iodine", systemImage: "leaf")
					Label("Iron", systemImage: "leaf")
					Label("Magnesium", systemImage: "leaf")
					Label("Manganese", systemImage: "leaf")
					Label("Molybdeum", systemImage: "leaf")
					Label("Monounsaturated Fat", systemImage: "leaf")
					Label("Niacin", systemImage: "leaf")
					Label("Pantothenic Acid", systemImage: "leaf")
				}
				Group {
					Label("Phosphorus", systemImage: "leaf")
					Label("Polyunsaturated Fat", systemImage: "leaf")
					Label("Potasium", systemImage: "leaf")
					Label("Riboflavin", systemImage: "leaf")
					Label("Saturated Fat", systemImage: "leaf")
					Label("Selenium", systemImage: "leaf")
					Label("Sodium", systemImage: "leaf")
					Label("Thiamine", systemImage: "leaf")
					Label("Total Fat", systemImage: "leaf")
					Label("Vitamin A", systemImage: "leaf")
				}
				Group {
					Label("Vitamin B12", systemImage: "leaf")
					Label("Vitamin B6", systemImage: "leaf")
					Label("Vitamin C", systemImage: "leaf")
					Label("Vitamin D", systemImage: "leaf")
					Label("Vitamin E", systemImage: "leaf")
					Label("Vitamin K", systemImage: "leaf")
					Label("Water", systemImage: "leaf")
					Label("Zinc", systemImage: "leaf")
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
		SettingsHealthkitView().previewDisplayName("")
    }
}
