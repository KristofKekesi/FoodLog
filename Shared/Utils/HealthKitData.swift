//
//  HealthKitData.swift
//  FoodLog
//
//  Created by Kristóf Kékesi on 2022. 02. 16..
//

import Foundation
import HealthKit

class HealthKitData{
	var healthStore: HKHealthStore?
	
	init() {
		// Checking if HealthKit is available
		if (HKHealthStore.isHealthDataAvailable()) {
			
			healthStore = HKHealthStore()
			
			// Things we want to write
			let nutrients: Set = [
				HKQuantityType.quantityType(forIdentifier: .dietaryIron)!,
				HKQuantityType.quantityType(forIdentifier: .dietaryZinc)!,
				HKQuantityType.quantityType(forIdentifier: .dietaryFiber)!,
				HKQuantityType.quantityType(forIdentifier: .dietarySugar)!,
				HKQuantityType.quantityType(forIdentifier: .dietaryWater)!,
				HKQuantityType.quantityType(forIdentifier: .dietaryBiotin)!,
				HKQuantityType.quantityType(forIdentifier: .dietaryCopper)!,
				HKQuantityType.quantityType(forIdentifier: .dietaryFolate)!,
				HKQuantityType.quantityType(forIdentifier: .dietaryIodine)!,
				HKQuantityType.quantityType(forIdentifier: .dietaryNiacin)!,
				HKQuantityType.quantityType(forIdentifier: .dietarySodium)!,
				HKQuantityType.quantityType(forIdentifier: .dietaryCalcium)!,
				HKQuantityType.quantityType(forIdentifier: .dietaryProtein)!,
				HKQuantityType.quantityType(forIdentifier: .dietaryThiamin)!,
				HKQuantityType.quantityType(forIdentifier: .dietaryCaffeine)!,
				HKQuantityType.quantityType(forIdentifier: .dietaryChloride)!,
				HKQuantityType.quantityType(forIdentifier: .dietaryChromium)!,
				HKQuantityType.quantityType(forIdentifier: .dietarySelenium)!,
				HKQuantityType.quantityType(forIdentifier: .dietaryMagnesium)!,
				HKQuantityType.quantityType(forIdentifier: .dietaryManganese)!,
				HKQuantityType.quantityType(forIdentifier: .dietaryPotassium)!,
				HKQuantityType.quantityType(forIdentifier: .dietaryMolybdenum)!,
				HKQuantityType.quantityType(forIdentifier: .dietaryPhosphorus)!,
				HKQuantityType.quantityType(forIdentifier: .dietaryRiboflavin)!,
				HKQuantityType.quantityType(forIdentifier: .dietaryCholesterol)!,
				HKQuantityType.quantityType(forIdentifier: .dietaryCarbohydrates)!,
				// Vitamins
				HKQuantityType.quantityType(forIdentifier: .dietaryVitaminA)!,
				HKQuantityType.quantityType(forIdentifier: .dietaryVitaminC)!,
				HKQuantityType.quantityType(forIdentifier: .dietaryVitaminD)!,
				HKQuantityType.quantityType(forIdentifier: .dietaryVitaminE)!,
				HKQuantityType.quantityType(forIdentifier: .dietaryVitaminK)!,
				HKQuantityType.quantityType(forIdentifier: .dietaryVitaminB6)!,
				HKQuantityType.quantityType(forIdentifier: .dietaryVitaminB12)!,
				// Fat
				HKQuantityType.quantityType(forIdentifier: .dietaryFatTotal)!,
				HKQuantityType.quantityType(forIdentifier: .dietaryFatSaturated)!,
				HKQuantityType.quantityType(forIdentifier: .dietaryFatPolyunsaturated)!,
				HKQuantityType.quantityType(forIdentifier: .dietaryFatMonounsaturated)!,
				
				HKQuantityType.quantityType(forIdentifier: .dietaryPantothenicAcid)!,
				HKQuantityType.quantityType(forIdentifier: .dietaryEnergyConsumed)!,
			]
			
			// Requesting auth
			healthStore?.requestAuthorization(toShare: nutrients, read: nil) { success, error in
				if (error != nil) {
					print("request failed")
				}
			}
			
		} else {
		}
	}
	
	func addHKData(_ nutrients: [Nutrient]){
		for nutrient in nutrients {
			print(nutrient.name)
		}
	}
}
