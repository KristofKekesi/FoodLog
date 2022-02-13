//
//  Ingredient.swift
//  FoodLog
//
//  Created by Kristóf Kékesi on 2022. 02. 12..
//

import Foundation

struct Ingredient {
	let id: UUID = UUID()
	let name: String
	let unit: String
	var amount: Int
}
