//
//  Meal.swift
//  FoodLog
//
//  Created by Kristóf Kékesi on 2022. 02. 19..
//

import Foundation
import SwiftUI

struct Meal: Identifiable {
	let id: UUID = UUID()
	let name: String
	let subtitle: String
	let icon: String
	let color: Color
	
	let ingredients: [Ingredient]
}
