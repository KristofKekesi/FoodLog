//
//  AddMealView.swift
//  FoodLog
//
//  Created by Kristóf Kékesi on 2022. 02. 12..
//

import SwiftUI

struct AddMealView: View {
	@Environment(\.dismiss) var dismiss
	
	@State var mealName: String = ""
	@State var mealEmoji: String = ""
	
	@StateObject var neededIngredients = Ingredients()
	
	@State var showAddIngredientsSheet: Bool = false
	@State var showCreateIngredientSheet: Bool = false
	
    var body: some View {
		NavigationView {
			Form {
				Section {
					TextField("Name", text: $mealName)
					TextField("Icon", text: $mealEmoji)
				}
				Section{
					ForEach($neededIngredients.ingredients, id: \.id) { $ingredient in
						Stepper(
							value: $ingredient.amount, in: 0...50) {
								HStack {
									Text("\(ingredient.name): \(ingredient.amount) \(ingredient.unit)")
									Spacer()
									Menu {
										Text("kg")
										Text("dkg")
										Text("g")
										Divider()
										Text("lbs")
										Text("oz")
									} label: {
										Image(systemName: "scalemass").opacity(0.6)
									}
								}
							}
					}.onDelete(perform: removeIngredient)
					Button {
						//showAddIngredientsSheet = true
						let ingredient: Ingredient = Ingredient(name: "Apple", unit: "kg", amount: 0)
						neededIngredients.ingredients.append(ingredient)
						
					} label: {
						Label("Add Ingredients", systemImage: "plus")
					}
				} header: {
					Text("Ingreedients")
				} footer: {
					VStack(alignment: .leading, spacing: 0) {
						Text("Select ingredients for just one meal.\n")
						Text("Didn't found what you wanted?")
						Button("Create a new ingredient.") {
							showCreateIngredientSheet = true
						}
					}
				}
			}
			.sheet(isPresented: $showAddIngredientsSheet, content: {SelectIngredientsView()})
			.sheet(isPresented: $showCreateIngredientSheet, content: {CreateIngredientView()})
			.navigationTitle("New meal")
			.toolbar {
				ToolbarItem(placement: .navigationBarLeading) {
					Button("Back") {
						dismiss()
					}
				}
				ToolbarItem(placement: .navigationBarTrailing) {
					Text("Add")
				}
			}
		}
	}
	
	func removeIngredient(at offsets: IndexSet) {
		neededIngredients.ingredients.remove(atOffsets: offsets)
	}
}

struct AddMealView_Previews: PreviewProvider {
    static var previews: some View {
		AddMealView().previewDisplayName("AddMealView")
    }
}
