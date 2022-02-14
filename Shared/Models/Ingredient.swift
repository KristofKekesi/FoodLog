//
//  Ingredient.swift
//  FoodLog
//
//  Created by Kristóf Kékesi on 2022. 02. 12..
//

import Foundation
import SwiftUI

struct Ingredient {
	let id: UUID = UUID()
	let name: String
	let icon: String
	let color: Color
	let unit: String
	var amount: Int
}
