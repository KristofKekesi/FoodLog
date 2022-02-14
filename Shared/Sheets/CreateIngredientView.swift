//
//  CreateIngredientView.swift
//  FoodLog
//
//  Created by Kristóf Kékesi on 2022. 02. 13..
//

import SwiftUI

struct CreateIngredientView: View {
	@Environment(\.dismiss) var dismiss
	
	@State var ingredientName: String = ""
	@State var ingredientIcon: String = ""
	@State var ingredientColor: Color = .green
	@State var ingridientMeasuring: String = "Mass"
	
	var mass: [String] = ["Kilogramm:kg", "Dekagramm:dkg", "Gramm:g", "Pound:lbs", "Ounce:oz"]
	
    var body: some View {
		NavigationView {
			Form {
				Section {
					TextField("Name", text: $ingredientName)
					TextField("Icon", text: $ingredientIcon)
					ColorPicker("Theme color", selection: $ingredientColor, supportsOpacity: false)
				}
				
				Section("Measuring") {
					Picker(selection: $ingridientMeasuring, label: Text("Measuring")) {
						Text("Mass").tag("mass")
						Text("Fluid").tag("fluid")
					}
				}
				Section{
					ForEach(Units, id: \.name) { Unit in
						if (ingridientMeasuring == Unit.type) {
							CheckView(state: false, title: Unit.name, subtitle: Unit.sign)
						}
					}
				} header: {
					Text("Units")
				} footer: {
					Text("Select the reasonable units that the new ingredient can be measured.")
				}
			}
				.navigationTitle("Create ingrediend")
				.toolbar {
					ToolbarItem(placement: .navigationBarLeading) {
						Button("Back") {
							dismiss()
						}
					}
					ToolbarItem(placement: .navigationBarTrailing) {
						Button("Add") {
							dismiss()
						}
					}
				}
		}
    }
}

struct CreateIngredientView_Previews: PreviewProvider {
    static var previews: some View {
		CreateIngredientView().previewDisplayName("CreateIngredientView")
    }
}
