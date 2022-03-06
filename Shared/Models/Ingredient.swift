//
//  Ingredient.swift
//  FoodLog
//
//  Created by Kristóf Kékesi on 2022. 02. 12..
//

import Foundation
import SwiftUI

struct Ingredient: Equatable & Identifiable {
	static func == (lhs: Ingredient, rhs: Ingredient) -> Bool {
		lhs.id == rhs.id
	}
	
	let id: UUID = UUID()
	let name: String
	let icon: String
	let color: Color
	let unit: UnitIsMassOrVolume
	var amount: Int
}
