//
//  Ingredient.swift
//  FoodLog
//
//  Created by Kristóf Kékesi on 2022. 02. 12..
//

import Foundation
import SwiftUI

struct Ingredient: Identifiable {
	let id: UUID = UUID()
	let name: String
	let icon: String
	let color: Color
	let unit: UnitIsMassOrVolume
	var amount: Int
}
