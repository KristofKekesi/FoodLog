//
//  CatalogView.swift
//  FoodLog
//
//  Created by Kristóf Kékesi on 2022. 02. 13..
//

import SwiftUI

struct CatalogView: View {
	@State private var searchText: String = ""
	@State private var sortBy: String = "calories"
	
    var body: some View {
		NavigationView {
			ScrollView {
				VStack(alignment: .leading) {
					InfoPaneView(title: "Add meals easily", content: "Add burgers, meals from fast food restaurants from our expanding online catalog.", colors: [.green, .secondary, .yellow]).cornerRadius(16).padding(EdgeInsets(top: -5, leading: 15, bottom: 0, trailing: 15))
					HStack {
						MealView(meal: Meal(name: "McChicken", subtitle: "from McDonald's", icon: "🍔", color: .yellow, ingredients: []))
						MealView(meal: Meal(name: "Big Mac", subtitle: "from McDonald's", icon: "🍔", color: .yellow, ingredients: []))
					}.padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
					VStack(alignment: .leading) {
						Text("Didn't found what you wanted?")
							.foregroundColor(.secondary)
						Button("Suggest a meal.") {}
					}.padding(EdgeInsets(top: 5, leading: 15, bottom: 0, trailing: 0))
						.font(.footnote)
				}
			}
			.navigationTitle("Catalog")
			.searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always)) {}
			.toolbar {
				ToolbarItem(placement: .navigationBarTrailing) {
					Menu {
						Picker("Sort by", selection: $sortBy) {
							Text("Sort by Calories").tag("calories")
							Text("Sort by Fat").tag("fat")
							Text("Sort by Protein").tag("protein")
						}
						Label("Increasing", systemImage: "chevron.up")
						Label("Decreasing", systemImage: "chevron.down")
					} label: {
						Image(systemName: "line.3.horizontal.decrease")
					}
				}
			}
		}
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
		CatalogView().previewDisplayName("CatalogView")
    }
}
