//
//  Nutrient.swift
//  FoodLog
//
//  Created by Kristóf Kékesi on 2022. 02. 20..
//

import Foundation
import HealthKit

struct Nutrient: Identifiable {
	let id: UUID = UUID()
	let name: String
	let nutrient: HKQuantityTypeIdentifier
	let ammount: Double
}
