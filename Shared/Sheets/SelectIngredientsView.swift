//
//  SelectIngredientsView.swift
//  FoodLog
//
//  Created by Kristóf Kékesi on 2022. 02. 12..
//

import SwiftUI

struct SelectIngredientsView: View {
	@StateObject var ingredients = Ingredients()
	
	@Environment(\.dismiss) var dismiss
	
	@State var selectedIngredients: [Ingredient] = []
	
	@State var searchText: String = ""
	@State var showCreateIngredientSheet: Bool = false
	
    var body: some View {
		NavigationView {
			ScrollView {
				VStack(alignment: .leading) {
						LazyVGrid(columns: [
							GridItem(),
							GridItem()
							]) {
								ForEach(ingredients.allIngredients
											.filter({ searchText.isEmpty ? true : ($0.name.contains(searchText) || $0.icon.contains(searchText)) })
								) { ingredient in
									SelectableIngredient(ingredient: ingredient)
								}
							}
					VStack(alignment: .leading) {
						Text("Didn't found what you wanted?").foregroundColor(.secondary)
						Button("Create a new ingredient.") {
							showCreateIngredientSheet = true
						}
					}
					.font(.footnote)
					.padding(EdgeInsets(top: 5, leading: 0, bottom: 0, trailing: 0))
				}.padding(EdgeInsets(top: 0, leading: 15, bottom: 5, trailing: 15))
					.navigationTitle("Add ingredients")
					.toolbar {
					ToolbarItem(placement: .navigationBarLeading) {
						Button("Back") {
							dismiss()
						}
					}
					ToolbarItem(placement: .navigationBarTrailing) {
						Button("Add") {
							//let ingredient: Ingredient = Ingredient(name: "Apple", unit: "kg", amount: 0)
							//ingredients.neededIngredients.append(ingredient)
							dismiss()
						}//.disabled(selectedIngredients.count == 0)
					}
				}
				.sheet(isPresented: $showCreateIngredientSheet, content: {CreateIngredientView()})
			}.searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always)) {}
		}
    }
}

struct SelectIngredientsView_Previews: PreviewProvider {
    static var previews: some View {
		SelectIngredientsView().previewDisplayName("SelectIngredientsView")
    }
}
