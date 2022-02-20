//
//  Ingredients.swift
//  FoodLog
//
//  Created by Kristóf Kékesi on 2022. 02. 12..
//

import Foundation
import Accessibility
import SwiftUI


class Ingredients: ObservableObject {
	@Published var neededIngredients = [Ingredient]()
	@Published var allIngredients = [
		// A
		Ingredient(name: "Apple", icon: "🍎", color: .red, unit: UnitMass.decigrams, amount: 0),
		Ingredient(name: "Aubergine", icon: "🍆", color: .purple, unit: UnitMass.decigrams, amount: 0),
		Ingredient(name: "Avocado", icon: "🥑", color: .green, unit: UnitMass.decigrams, amount: 0),
		// B
		Ingredient(name: "Bacon", icon: "🥓", color: .pink, unit: UnitMass.decigrams, amount: 0),
		Ingredient(name: "Banana", icon: "🍌", color: .yellow, unit: UnitMass.decigrams, amount: 0),
		Ingredient(name: "Blueberry", icon: "🫐", color: .blue, unit: UnitMass.decigrams, amount: 0),
		Ingredient(name: "Bread", icon: "🍞", color: .brown, unit: UnitMass.decigrams, amount: 0),
		Ingredient(name: "Broccoli", icon: "🥦", color: .green, unit: UnitMass.decigrams, amount: 0),
		// C
		Ingredient(name: "Carrot", icon: "🥕", color: .orange, unit: UnitMass.decigrams, amount: 0),
		Ingredient(name: "Cheese", icon: "🧀", color: .yellow, unit: UnitMass.decigrams, amount: 0),
		Ingredient(name: "Cherry", icon: "🍒", color: .red, unit: UnitMass.decigrams, amount: 0),
		Ingredient(name: "Chestnut", icon: "🌰", color: .brown, unit: UnitMass.decigrams, amount: 0),
		Ingredient(name: "Chilli pepper", icon: "🌶", color: .red, unit: UnitMass.decigrams, amount: 0),
		Ingredient(name: "Coconut", icon: "🥥", color: .white, unit: UnitMass.decigrams, amount: 0),
		Ingredient(name: "Corn", icon: "🌽", color: .yellow, unit: UnitMass.decigrams, amount: 0),
		Ingredient(name: "Cucumber", icon: "🥒", color: .green, unit: UnitMass.decigrams, amount: 0),
		// D
		// E
		Ingredient(name: "Egg", icon: "🥚", color: .white, unit: UnitMass.decigrams, amount: 0),
		// F
		// G
		Ingredient(name: "Garlic", icon: "🧄", color: .brown, unit: UnitMass.decigrams, amount: 0),
		Ingredient(name: "Grape", icon: "🍇", color: .pink, unit: UnitMass.decigrams, amount: 0),
		// H
		// I
		// J
		// K
		Ingredient(name: "Kiwi", icon: "🥝", color: .green, unit: UnitMass.decigrams, amount: 0),
		// L
		Ingredient(name: "Lemon", icon: "🍋", color: .yellow, unit: UnitMass.decigrams, amount: 0),
		Ingredient(name: "Lemon Juice", icon: "", color: .yellow, unit: UnitVolume.deciliters, amount: 0),
		// M
		Ingredient(name: "Mango", icon: "🥭", color: .orange, unit: UnitMass.decigrams, amount: 0),
		Ingredient(name: "Melon", icon: "🍈", color: .yellow, unit: UnitMass.decigrams, amount: 0),
		// N
		// O
		Ingredient(name: "Olive", icon: "🫒", color: .green, unit: UnitMass.decigrams, amount: 0),
		Ingredient(name: "Onion", icon: "🧅", color: .brown, unit: UnitMass.decigrams, amount: 0),
		// P
		Ingredient(name: "Peach", icon: "🍑", color: .orange, unit: UnitMass.decigrams, amount: 0),
		Ingredient(name: "Peanut", icon: "🥜", color: .brown, unit: UnitMass.decigrams, amount: 0),
		Ingredient(name: "Pear", icon: "🍐", color: .green, unit: UnitMass.decigrams, amount: 0),
		Ingredient(name: "Pepper", icon: "🫑", color: .green, unit: UnitMass.decigrams, amount: 0),
		Ingredient(name: "Pineaple", icon: "🍍", color: .orange, unit: UnitMass.decigrams, amount: 0),
		Ingredient(name: "Potato", icon: "🥔", color: .brown, unit: UnitMass.decigrams, amount: 0),
		// Q
		// R
		Ingredient(name: "Rice", icon: "🍚", color: .white, unit: UnitMass.decigrams, amount: 0),
		// S
		Ingredient(name: "Strawberry", icon: "🍓", color: .red, unit: UnitMass.decigrams, amount: 0),
		Ingredient(name: "Sweet potato", icon: "🍠", color: .purple, unit: UnitMass.decigrams, amount: 0),
		// T
		Ingredient(name: "Tangerine", icon: "🍊", color: .orange, unit: UnitMass.decigrams, amount: 0),
		Ingredient(name: "Tomato", icon: "🍅", color: .red, unit: UnitMass.decigrams, amount: 0),
		// U
		// V
		// W
		Ingredient(name: "Water", icon: "💧", color: .blue, unit: UnitVolume.deciliters, amount: 0),
		Ingredient(name: "Watermelon", icon: "🍉", color: .red, unit: UnitMass.decigrams, amount: 0),
		// X
		// Y
		// Z
	]
}
