//
//  Ingredients.swift
//  FoodLog
//
//  Created by Kristóf Kékesi on 2022. 02. 12..
//

import Foundation


class Ingredients: ObservableObject {
	@Published var ingredients = [Ingredient]()
}
