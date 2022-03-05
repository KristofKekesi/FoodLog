//
//  HealthKitData.swift
//  FoodLog
//
//  Created by Kristóf Kékesi on 2022. 02. 16..
//

import Foundation
import HealthKit

let usedNutrientsName: [String] = [
	"Iron",
	"Zinc",
	"Fiber",
	"Dietary Sugar",
	"Water",
	"Biotin",
	"Copper",
	"Folate",
	"Iodine",
	"Niacin",
	"Sodium",
	"Calcium",
	"Protein",
	"Thiamin",
	"Caffeine",
	"Chloride",
	"Chromium",
	"Selenium",
	"Magnesium",
	"Manganese",
	"Potassium",
	"Molybdenum",
	"Phosphorus",
	"Riboflavin",
	"Dietary Cholesterol",
	"Carbohydrates",
	"Vitamin A",
	"Vitamin B12",
	"Vitamin B6",
	"Vitamin C",
	"Vitamin D",
	"Vitamin E",
	"Vitamin K",
	"Total Fat",
	"Saturated Fat",
	"Polyunsaturated Fat",
	"Monounsaturated Fat",
	"Pantothenic Acid",
	"Dietary Energy"
]

let usedNutrients: [HKQuantityTypeIdentifier] = [
	.dietaryIron,
	.dietaryZinc,
	.dietaryFiber,
	.dietarySugar,
	.dietaryWater,
	.dietaryBiotin,
	.dietaryCopper,
	.dietaryFolate,
	.dietaryIodine,
	.dietaryNiacin,
	.dietarySodium,
	.dietaryCalcium,
	.dietaryProtein,
	.dietaryThiamin,
	.dietaryCaffeine,
	.dietaryChloride,
	.dietaryChromium,
	.dietarySelenium,
	.dietaryMagnesium,
	.dietaryManganese,
	.dietaryPotassium,
	.dietaryMolybdenum,
	.dietaryPhosphorus,
	.dietaryRiboflavin,
	.dietaryCholesterol,
	.dietaryCarbohydrates,
	.dietaryVitaminA,
	.dietaryVitaminB12,
	.dietaryVitaminB6,
	.dietaryVitaminC,
	.dietaryVitaminD,
	.dietaryVitaminE,
	.dietaryVitaminK,
	.dietaryFatTotal,
	.dietaryFatSaturated,
	.dietaryFatPolyunsaturated,
	.dietaryFatMonounsaturated,
	.dietaryPantothenicAcid,
	.dietaryEnergyConsumed
]

class HealthKitData{
	var healthStore: HKHealthStore?
	
	init() {
		// Checking if HealthKit is available
		if (HKHealthStore.isHealthDataAvailable()) {
			
			healthStore = HKHealthStore()
			
			// Things we want to write
			var nutrients: Set<HKQuantityType> = []
			for nutrient in usedNutrients {
				nutrients.insert(HKQuantityType.quantityType(forIdentifier: nutrient)!)
			}
			
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
			print("\(nutrient.name) - \(nutrient.quantity)")
			
			HealthKitData().healthStore!.save(
				HKQuantitySample(type: HKSampleType.quantityType(
					forIdentifier: nutrient.nutrient
				)!,
								 quantity: nutrient.quantity,
								 start: Date(),
								 end: Date()
				)) { success, error in
					if (error != nil) {
						print(error!)
					}
				}
		}
	}
}
