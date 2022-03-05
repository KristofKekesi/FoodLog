//
//  NutrientAccess.swift
//  FoodLog
//
//  Created by Kristóf Kékesi on 2022. 03. 03..
//

import SwiftUI
import HealthKit

struct NutrientAccess: View {
	var name: String
	var nutrient: HKQuantityTypeIdentifier
	
	
	func isNutrientAvailable() -> String {
		
		if (HealthKitData().healthStore?.supportsHealthRecords() ?? false) {
			return "unsupported"
		}
		
		let check = HealthKitData().healthStore!.authorizationStatus(for: HKObjectType.quantityType(forIdentifier: nutrient)!).rawValue
		
		var isAvailable: String = "unavailable"
		if (check == 2) { isAvailable = "available" }
		
		return isAvailable
	}
	
    var body: some View {
		HStack {
			Label(name, systemImage: "leaf")
			Spacer()
			if (isNutrientAvailable() == "unsupported") {
				Text("Unsupported").foregroundColor(.secondary)
			} else if (isNutrientAvailable() == "unavailable") {
				Text("Denied").foregroundColor(.red)
			} else if (isNutrientAvailable() == "available") {
				Text("Granted").foregroundColor(.secondary)
			} else {
				Text("Unknown").foregroundColor(.secondary)
			}
		}
    }
}

struct NutrientAccess_Previews: PreviewProvider {
    static var previews: some View {
		NutrientAccess(name: "Test Zinc", nutrient: .dietaryZinc)
    }
}
