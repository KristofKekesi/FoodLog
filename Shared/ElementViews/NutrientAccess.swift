//
//  NutrientAccess.swift
//  FoodLog
//
//  Created by Kristóf Kékesi on 2022. 03. 03..
//

import SwiftUI

struct NutrientAccess: View {
	var name: String
	var isDenied: Bool
	
    var body: some View {
		HStack {
			Label(name, systemImage: "leaf")
			Spacer()
			if (isDenied) {
				Text("Denied").foregroundColor(.red)
			} else {
				Text("Granted").foregroundColor(.secondary)
			}
		}
    }
}

struct NutrientAccess_Previews: PreviewProvider {
    static var previews: some View {
        NutrientAccess(name: "Test Nutrient", isDenied: false)
		NutrientAccess(name: "Test Nutrient", isDenied: true)
    }
}
