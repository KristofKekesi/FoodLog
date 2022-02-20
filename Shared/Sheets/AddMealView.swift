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
	
    var body: some View {
		NavigationView {
			Form {
				Section {
					TextField("Name", text: $mealName)
					TextField("Icon", text: $mealEmoji)
				}
				Section{
					ForEach($neededIngredients.neededIngredients, id: \.id) { $ingredient in
						Stepper(
							value: $ingredient.amount, in: 0...50) {
								HStack {
									Text("\(ingredient.name): \(ingredient.amount)")
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
						showAddIngredientsSheet = true
					} label: {
						Label("Add Ingredients", systemImage: "plus")
					}
				} header: {
					Text("Ingreedients")
				} footer: {
					Text("Select ingredients for just one meal.\n")
				}
			}
			.sheet(isPresented: $showAddIngredientsSheet, content: {SelectIngredientsView(ingredients: neededIngredients)})
			.navigationTitle("New meal")
			.toolbar {
				ToolbarItem(placement: .navigationBarLeading) {
					Button("Back") {
						dismiss()
					}
				}
				ToolbarItem(placement: .navigationBarTrailing) {
					Button("Add") {
						
					}.disabled(true)
				}
			}
		}
	}
	
	func removeIngredient(at offsets: IndexSet) {
		neededIngredients.neededIngredients.remove(atOffsets: offsets)
	}
}

struct AddMealView_Previews: PreviewProvider {
    static var previews: some View {
		AddMealView().previewDisplayName("AddMealView")
    }
}
